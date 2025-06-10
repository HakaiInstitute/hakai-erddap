#!/bin/bash
#[[ -f ./.env ]] && export $(grep -v '^#' .env | xargs)
#[[ -f ./.env ]] && grep -v '^#' .env | tr '\n' '\0' | xargs -0 | export
# env $(cat .env)
IFS='
'
export $(grep -v '^#' .env | xargs -d '\n')
docker exec -it --user tomcat "${CONTAINER_NAME:-erddap}" bash -c "cd webapps/erddap/WEB-INF/ && bash DasDds.sh $*" \
  
