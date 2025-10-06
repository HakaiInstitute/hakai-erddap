from fastapi import FastAPI, Request, status
from fastapi.responses import JSONResponse
from fastapi.middleware.cors import CORSMiddleware
from cloudstile import AsyncTurnstile
from logger import get_logger
import uvicorn
import os

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
# TODO: THIS MUST BE a SECRET!!!
turnstile = AsyncTurnstile(secret=settings.cf_turnstile_secret)


@app.post("/submit")
async def submit(request: Request):

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
        header={}
        status_code=status.HTTP_200_OK
        if cf_response.success:
            header = {"X-Turnstile-Response": token}
        else:
            status_code = status.HTTP_401_UNAUTHORIZED
        # return cf_response.json()
        response = JSONResponse(
            status_code=status_code,
            content=cf_response.json(),
            headers=header
        )
        if cf_response.success:
            response.set_cookie(key="cf-turnstile-response", value=token)
        return response
    except Exception as e:
        print(f"Turnstile validation error: {e}")
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