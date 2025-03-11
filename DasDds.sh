#!/bin/bash
#[[ -f ./.env ]] && export $(grep -v '^#' .env | xargs)
#[[ -f ./.env ]] && grep -v '^#' .env | tr '\n' '\0' | xargs -0 | export
IFS='
'
env $(cat .env)
docker exec -it "${CONTAINER_NAME:-erddap}" bash -c "cd webapps/erddap/WEB-INF/ && bash DasDds.sh $*" \
  
