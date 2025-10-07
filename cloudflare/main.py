from fastapi import FastAPI, Request, status, Cookie
from fastapi.responses import Response
from fastapi.middleware.cors import CORSMiddleware
from cloudstile import AsyncTurnstile
from logger import get_logger
import uvicorn
import os
import time
from typing import Dict
import jwt
from httpx import AsyncClient
from starlette.responses import StreamingResponse
from starlette.background import BackgroundTask

from settings import get_settings

log = get_logger(__name__)

settings = get_settings()

app = FastAPI(
    title=settings.app_name,
    description=settings.app_description,
    version=settings.app_version,
    contact={"name": settings.app_contact_name, "email": settings.app_contact_email},
    debug=settings.debug,
    root_path=settings.root_path,
)

origins = [
    "http://localhost",
    "http://localhost:8090",
    "http://localhost:9988",
    "http://localhost:9988/submit",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    expose_headers=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

turnstile = AsyncTurnstile(secret=settings.cf_turnstile_secret)

def token_response(token: str):
    return {
        "access_token": token
    }

def sign_jwt(cf_token: str) -> Dict[str, str]:
    payload = {
        "cf_token": cf_token,
        "expires": time.time() + 120 # 2 min
    }
    token = jwt.encode(payload, settings.JWT_SECRET, algorithm=settings.JWT_ALGORITHM)

    return token_response(token)

def decode_jwt(token: str) -> dict:
    try:
        decoded_token = jwt.decode(token, settings.JWT_SECRET, algorithms=[settings.JWT_ALGORITHM])
        return decoded_token if decoded_token["expires"] >= time.time() else None
    except:
        return {}

@app.get("/proxy/{path:path}")
async def proxy(request: Request, path: str, cf_turnstile_token: str = Cookie(None)):
    if cf_turnstile_token is None:
        return Response(status_code=status.HTTP_401_UNAUTHORIZED, content="No token provided")

    decoded_token = decode_jwt(cf_turnstile_token)
    if decoded_token is None:
        return Response(status_code=status.HTTP_401_UNAUTHORIZED, content="Invalid or expired token")

    client = AsyncClient(base_url=f'{settings.erddap_container}', timeout=30.0)
    # Here you would typically forward the request to the desired URL
    # For demonstration, we'll just return a success message and the decoded token
    #return {"message": "Token validated successfully", "decoded_token": decoded_token}
    req = client.build_request("GET", path)
    r = await client.send(req, stream=True)
    return StreamingResponse(
        r.aiter_raw(),
        background=BackgroundTask(r.aclose),
        headers=r.headers
   )
    
@app.post("/submit", status_code=200)
async def submit(request: Request, response: Response):

    body = await request.json()

    log.debug(request.client.host)
    log.debug(body)
    try:
        token = body.get("cf-turnstile-response", "...")
        cf_response = await turnstile.validate(
            token,
            request.client.host,
        )
        log.debug(cf_response.json())
        log.debug(cf_response.success)

        if cf_response.success:
            signed_jwt = sign_jwt(token)
            response.set_cookie(
                key="cf_turnstile_token", 
                value=signed_jwt["access_token"],
                max_age=120, 
                expires=120, 
                path='/', 
                secure=True, 
                httponly=False, 
                samesite="strict"
            )
        else:
            # If Turnstile validation fails, return 401 Unauthorized
            response.status_code = status.HTTP_401_UNAUTHORIZED

        return cf_response.json()
    
    except Exception as e:
        log.error(f"Turnstile validation error: {e}")
        return {'success': False, 'error-codes': ['internal-error']}
    
if __name__ == "__main__":
    log.info(f"Starting {settings.app_name} v{settings.app_version}")
    uvicorn.run(
        "main:app",
        host="0.0.0.0",
        port=int(os.getenv("PORT", 9988)),
        log_config=None,
        timeout_keep_alive=int(os.getenv("TIMEOUT_KEEP_ALIVE", 15)),
    )