import time
from unittest.mock import AsyncMock, MagicMock

import pytest
from fastapi.testclient import TestClient
from httpx import Response as HttpxResponse

from main import app, get_settings, sign_jwt


@pytest.fixture(scope="module")
def client():
    """Test client for the FastAPI app."""
    # Override settings for testing
    def get_test_settings():
        settings = get_settings()
        settings.JWT_SECRET = "test-secret"
        settings.JWT_ALGORITHM = "HS256"
        settings.erddap_container = "http://test-erddap"
        return settings

    app.dependency_overrides[get_settings] = get_test_settings
    with TestClient(app) as c:
        yield c
    app.dependency_overrides = {}


def test_health_check(client):
    """Test the health check endpoint."""
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}


@pytest.mark.asyncio
async def test_submit_success(client, mocker):
    """Test the /submit endpoint with a successful Turnstile validation."""
    # Mock the turnstile validation
    mock_validate = AsyncMock()
    mock_validate.return_value = MagicMock(
        success=True, json=lambda: {"success": True, "challenge_ts": "..."}
    )
    mocker.patch("main.turnstile.validate", mock_validate)

    response = client.post("/submit", json={"cf-turnstile-response": "valid-token"})

    assert response.status_code == 200
    assert response.json()["success"] is True
    assert "cf_turnstile_token" in response.cookies

    mock_validate.assert_awaited_once()


@pytest.mark.asyncio
async def test_submit_failure(client, mocker):
    """Test the /submit endpoint with a failed Turnstile validation."""
    # Mock the turnstile validation
    mock_validate = AsyncMock()
    mock_validate.return_value = MagicMock(
        success=False, json=lambda: {"success": False, "error-codes": ["invalid-input-response"]}
    )
    mocker.patch("main.turnstile.validate", mock_validate)

    response = client.post("/submit", json={"cf-turnstile-response": "invalid-token"})

    assert response.status_code == 401
    assert response.json()["success"] is False
    assert "cf_turnstile_token" not in response.cookies


@pytest.mark.asyncio
async def test_submit_exception(client, mocker):
    """Test the /submit endpoint when Turnstile validation raises an exception."""
    # Mock the turnstile validation to raise an exception
    mock_validate = AsyncMock(side_effect=Exception("Turnstile service unavailable"))
    mocker.patch("main.turnstile.validate", mock_validate)

    response = client.post("/submit", json={"cf-turnstile-response": "any-token"})

    # The endpoint handles the exception and returns a 200 OK with an error message
    assert response.status_code == 200
    assert response.json() == {"success": False, "error-codes": ["internal-error"]}
    assert "cf_turnstile_token" not in response.cookies


def test_proxy_no_token(client):
    """Test the /proxy endpoint without a token."""
    response = client.get("/proxy/some/path")
    assert response.status_code == 401
    assert response.text == "No token provided"


def test_proxy_expired_token(client):
    """Test the /proxy endpoint with an expired token."""
    # Create a token that has already expired
    payload = {"cf_token": "some-token", "expires": time.time() - 300}
    token = sign_jwt(payload["cf_token"]) # sign_jwt creates a new token, let's manually create an expired one
    
    from jose import jwt
    settings = get_settings()
    expired_token = jwt.encode(payload, settings.JWT_SECRET, algorithm=settings.JWT_ALGORITHM)

    client.cookies.set("cf_turnstile_token", expired_token)
    response = client.get("/proxy/some/path")
    assert response.status_code == 401
    assert response.text == "Invalid or expired token"


def test_proxy_invalid_token(client):
    """Test the /proxy endpoint with an invalid token."""
    client.cookies.set("cf_turnstile_token", "this-is-not-a-valid-jwt")
    response = client.get("/proxy/some/path")
    assert response.status_code == 401
    assert response.text == "Invalid or expired token"


@pytest.mark.asyncio
async def test_proxy_success(client, mocker):
    """Test the /proxy endpoint with a valid token."""
    # 1. Get a valid token by simulating a successful submit
    mock_validate = AsyncMock()
    mock_validate.return_value = MagicMock(success=True, json=lambda: {"success": True})
    mocker.patch("main.turnstile.validate", mock_validate)
    submit_response = client.post("/submit", json={"cf-turnstile-response": "valid-token"})
    token = submit_response.cookies.get("cf_turnstile_token")
    assert token is not None

    # 2. Mock the backend ERDDAP service
    async def mock_aiter_raw():
        yield b"streamed "
        yield b"content"

    mock_response = HttpxResponse(
        200,
        headers={"X-Test-Header": "Test-Value"},
        content=b"streamed content",
    )
    # Because httpx.Response.aiter_raw is an async generator, we mock it this way
    mock_response.aiter_raw = mock_aiter_raw
    mock_response.aclose = AsyncMock()

    mock_send = AsyncMock(return_value=mock_response)
    mocker.patch("httpx.AsyncClient.send", mock_send)

    # 3. Make the proxy request
    proxy_path = "tabledap/test.csv"
    client.cookies.set("cf_turnstile_token", token)
    proxy_response = client.get(f"/proxy/{proxy_path}")

    # 4. Assertions
    assert proxy_response.status_code == 200
    assert proxy_response.text == "streamed content"
    assert proxy_response.headers["x-test-header"] == "Test-Value"

    # Check that the httpx client was called correctly
    mock_send.assert_awaited_once()
    request_sent = mock_send.call_args[0][0]
    print(request_sent)
    assert request_sent.method == "GET"
    assert str(request_sent.url) == f"http://localhost:8090/{proxy_path}"
    mock_response.aclose.assert_awaited_once()


def test_decode_jwt_invalid_algo(client):
    """Test that decode_jwt handles JWTError for wrong algorithm."""
    from jose import jwt
    settings = get_settings()
    # Encode with a different algorithm
    token = jwt.encode({"some": "payload", "expires": time.time() + 100}, settings.JWT_SECRET, algorithm="HS512")
    
    from main import decode_jwt
    # decode_jwt will use HS256 by default from settings
    decoded = decode_jwt(token)
    assert decoded == None