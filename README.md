[![Lint Code Base](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/linter.yml/badge.svg)](https://github.com/HakaiInstitute/hakai-datasets/actions/workflows/linter.yml)

# Hakai Datasets
This repository contains different components needed to produce and maintain the Hakai related datasets on Hakai ERDDAP servers.

## [Hakai Production ERDDAP](https://catalogue.hakai.org/erddap/index.html)
All datasets made available within the `datasets` folder in the ERDDAP xml format are made available on the production server.

## [Hakai Development ERDDAP](https://goose.hakai.org/erddap/index.html)
All datasets made available within the `datasets_development` folder in the ERDDAP xml format are made available on the development server.

## Hakai Database integration
All views and tables generated from the diferent sql queries made available in the `view` directory are run nightly from the hecate.hakai.org server from the master branch.

All commits to this repository are tested by different linters through a PR or commit to the master branch:
- python: black, isort
- sql: sqlfluff
- markdown

We are using the super-linter library to generate the different automated integration tests.
