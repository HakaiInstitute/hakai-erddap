#!/bin/bash
[[ -f ./.env ]] && grep -v '^#' .env | tr '\n' '\0' | xargs -0 | export
docker exec -it "${CONTAINER_NAME:-erddap}" bash -c "cd webapps/erddap/WEB-INF/ && bash GenerateDatasetsXml.sh -verbose $*" \