# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install uv, the fast Python package installer
RUN pip install uv

# Copy the project definition file
COPY pyproject.toml .
# Install dependencies from pyproject.toml using uv
RUN uv sync --no-dev 

# Copy the rest of the application code
COPY . .

EXPOSE 9988

# Run the application with Gunicorn
CMD [".venv/bin/python", "./main.py"]
