import logging

# Configure root logger
logging.basicConfig(
    level=logging.DEBUG,
    format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
    datefmt="%Y/%m/%d %H:%M:%S",
)


# Create a function to get a logger for each module
def get_logger(name):
    """Get a logger with the given name."""
    return logging.getLogger(name)
