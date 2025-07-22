#!/bin/bash

# Load environment variables
if [[ -f .env ]]; then
    set -a
    source .env
    set +a
    echo "Using container: ${CONTAINER_NAME}"
else
    echo "Warning: .env file not found"
    exit 1
fi

# Execute DasDds.sh in container
docker exec -it --user tomcat "${CONTAINER_NAME}" bash -c \
    "cd webapps/erddap/WEB-INF/ && bash DasDds.sh $*"