#!/bin/bash

if [ -f .env ]; then
    source .env
fi
docker exec -it "${CONTAINER_NAME:-erddap}" bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose $*" \
