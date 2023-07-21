# Hakai Datasets

[![Test datasets.xml and linter](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/review-datasets-xml.yaml/badge.svg)](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/review-datasets-xml.yaml)
[![Update Development ERDDAP server](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/update-erddap-development-server.yaml/badge.svg?branch=development)](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/update-erddap-development-server.yaml)
[![Update Production ERDDAP server](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/update-erddap-production-server.yaml/badge.svg?branch=master)](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/update-erddap-production-server.yaml)

This repository contains different components needed to produce and maintain the Hakai related datasets on Hakai ERDDAP servers.
Server update status:

All datasets made available within the `datasets.d` folder in the ERDDAP xml format are made available on the production server.
## Configuration

The different components of the ERDDAP system and datasets configuration are defined through the environment variables present within the docker container. 
To start a new configuration create a copy of the `sample.env` file as `.env` and fill up the different items available. The environment variables are following three main categories:
- ERDDAP_.* variables are used to overwrite any components available within the erddap `setup.xml`. 
- ERDDAP_DATASET_(.*) variables are used to define top level elements of the dataset.xml, see [ERDDAP Docs](https://coastwatch.pfeg.noaa.gov/erddap/download/setupDatasetsXml.html#details) for full list of parametesr. This component is using the EXPERIMENTAL feature `/datasets.d.sh` of [docker-erddap](https://github.com/axiom-data-science/docker-erddap).
- ERDDAP_SECRET_(.*) is used to replace any expressions present within the datasets.xml by a certain value. This can be use to keep certain information secret. This component is using the EXPERIMENTAL feature `/init.d/*` of [docker-erddap](https://github.com/axiom-data-science/docker-erddap) and is handled by [init.d/replace-datasets-secrets.sh](init.d/replace-datasets-secrets.sh)

### Testing environment
- Install [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/)
- put your data files (eg .nc files) into the datasets folder
- edit the config files in the config directory. After editing them you will need to run `sh update-erddap.sh` to create datasets.xml
- Run `docker-compose up`. On unix systems you will need to run with `sudo`
- See if it works by going to <http://localhost:8090/erddap>

### Deployments

For both servers, configuration is handled within the `.env` file which overwrites fields present within the `dataset.xml`.
- [Hakai Development ERDDAP](https://goose.hakai.org/erddap/index.html) (branch = master)
- [Hakai Production ERDDAP](https://catalogue.hakai.org/erddap/index.html) (branch = development)

## Hakai Database integration
All views and tables generated from the diferent sql queries made available in the `view` directory are run nightly from the hecate.hakai.org server from the master branch.

## CI Integration
All commits to this repository are tested by different linters through a PR or commit to the development and master branches:
- python: black, isort
- sql: sqlfluff
- markdown
- xml

We are using the super-linter library to generate the different automated integration tests.

If linter and tests are succeeded the changes will automatically be reflected on the associated deployment instance by triggering via ssh the [update-erddap.sh](update-erddap.sh) command and the [update worflow](.github/workflows/update-erddap-servers.yaml).

