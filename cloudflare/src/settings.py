from functools import lru_cache

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    """Settings for the application"""

    model_config = SettingsConfigDict(
        env_file=".env", env_file_encoding="utf-8", extra="ignore"
    )

    # Application settings
    app_name: str = "Hakai RSK Conversion Service"
    app_description: str = ""
    app_version: str = "0.0.3"
    app_contact_name: str = "Taylor Denouden"
    app_contact_email: str = "taylor.denouden@hakai.org"
    debug: bool = False
    root_path: str = ""
    max_subprocesses: int = 4
    cf_turnstile_secret: str = "1x0000000000000000000000000000000AA"
    downstream_container: str = "http://localhost:8090"
    JWT_SECRET: str = None
    JWT_ALGORITHM: str = None
    log_level: str = "DEBUG"
    log_format: str = "%(asctime)s [%(levelname)s] %(name)s: %(message)s"
    log_date_format: str = "%Y/%m/%d %H:%M:%S"




@lru_cache()
def get_settings():
    return Settings()
