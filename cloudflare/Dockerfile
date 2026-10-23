# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install uv, the fast Python package installer
RUN python -m pip install --no-cache-dir "pip @ https://files.pythonhosted.org/packages/3f/06/3e4420302363fbb71be3c7f35ce042f54bfca330e3e66b3a2e3c4cca579f/pip-26.2.2-py3-none-any.whl#sha256=fd7f4dfa8190e014013b9f08f3e973f4e4c26ffd179a204895533a7254813a70"
RUN pip install "uv>=0.13.4"

# Copy the project definition file
COPY pyproject.toml .
# Install dependencies from pyproject.toml using uv
RUN uv sync --no-dev 

# Copy the rest of the application code
COPY ./src .

EXPOSE 9988

# Run the application with Gunicorn
CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "9988", "--workers", "4"]