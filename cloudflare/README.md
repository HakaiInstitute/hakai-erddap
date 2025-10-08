## Cloudflare Proxy Overview
The cloudflare module is a self-contained FastAPI application designed to act as a security proxy in front of a backend ERDDAP service. Its primary function is to protect access to ERDDAP data files by requiring users to solve a Cloudflare Turnstile challenge before they can download them.

This is achieved through a two-step process:

Verification: A user is first presented with a Turnstile challenge. Upon successful completion, the browser sends a cf-turnstile-response token to this application's /submit endpoint. The application verifies this token with Cloudflare, and if valid, issues a short-lived JSON Web Token (JWT) to the user in a cookie named cf_turnstile_token.
Proxying: When the user's browser requests a protected file, the request is routed to the application's /proxy/{path} endpoint. The application validates the JWT from the cf_turnstile_token cookie. If the token is valid and not expired, the application forwards the request to the backend ERDDAP container, streams the response (e.g., a data file) back to the user, and preserves the original headers.
Key Components
FastAPI Application (main.py):

/ (Health Check): A simple endpoint that returns {"status": "ok"} to confirm the service is running.
/submit (Token Verification): This endpoint receives the Turnstile token from the user's browser. It validates the token against the Cloudflare API. On success, it creates and signs a JWT containing an expiration time and sets it as an HttpOnly cookie.
/proxy/{path:path} (Authenticated Proxy): This is the core endpoint. It intercepts requests for protected files. It first checks for and validates the cf_turnstile_token cookie. If the JWT is valid, it uses httpx to make an identical request to the backend ERDDAP service (defined by the erddap_container setting) and streams the response back to the client. If the token is missing, invalid, or expired, it returns a 401 Unauthorized error.
Settings (settings.py):

Configuration is managed using Pydantic's BaseSettings, allowing it to be loaded from a .env file or environment variables.
Key settings include the cf_turnstile_secret, the URL of the backend erddap_container, and the JWT_SECRET used for signing access tokens.
Docker Integration (docker-compose.yml):

The module is designed to be run as a Docker container, typically named cloudflare_proxy.
In the Docker environment, it's configured to communicate with the ERDDAP service over the internal Docker network (e.g., erddap_container=http://erddap:8080).
Web Server Integration (.builder file):

The provided Apache RewriteRule configuration shows how a front-facing web server (like Apache) would integrate with this service.
It conditionally rewrites requests for files under /erddap/files/. If a user does not have the cf_turnstile_token cookie, they are shown a page with the challenge. If they do have the cookie, their request is internally rewritten to the FastAPI proxy service.
In summary, this module is a clever and decoupled way to add "are you a human?" verification to a service (ERDDAP) without modifying the core service itself. It acts as a gatekeeper, issuing temporary passes (JWTs) to verified users and proxying their requests.

overview writen by Gemini

## building
docker compose --env-file cloudflare/.env build cloudflare_proxy

## deployment
docker compose up -d cloudflare_proxy

## testing
uv run pytest