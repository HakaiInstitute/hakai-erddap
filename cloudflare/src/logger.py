import logging
from settings import get_settings

settings = get_settings()

LOG_LEVEL = settings.log_level
LOG_FORMAT = settings.log_format
LOG_DATE_FORMAT = settings.log_date_format

file_handler = logging.handlers.RotatingFileHandler("logs/proxy.log", maxBytes=20000000, backupCount=5)
file_handler.setLevel(logging.INFO)

stream_handler = logging.StreamHandler()
stream_handler.setLevel(LOG_LEVEL)

# Configure root logger
logging.basicConfig(
    level=LOG_LEVEL,
    format=LOG_FORMAT,
    datefmt=LOG_DATE_FORMAT,
    handlers=[
        file_handler,
        stream_handler
    ]
)



# Create a function to get a logger for each module
def get_logger(name):
    """Get a logger with the given name."""
    return logging.getLogger(name)
