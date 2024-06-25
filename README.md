# Hakai Datasets

This repository contains different components needed to produce and maintain Hakai's datasets on Hakai ERDDAP servers.
Server update status:

All datasets made available within the `datasets.d` folder in the ERDDAP XML format are made available on the production server.

Hakai deploy ERDDAP as docker containers by using the [docker-erddap](https://github.com/axiom-data-science/docker-erddap) image. Continuous Integration is handled via the [erddap-deploy actions](https://github.com/HakaiInstitute/erddap-deploy) and the container configuration is handled via [CapRover](https://caprover.com/) applications.

See [GitHub Deployments](https://github.com/HakaiInstitute/hakai-datasets/deployments) for all active deployments maintained via this repository.

## Configuration

The present repository is handled via CapRovers Applications. To configure a deployment, follow these steps:

- Install CapRover on the server
- CapRover Application Configuration:
  - Create a new application for your ERDDAP instance
  - Set container HTTP port: 8080
  - Copy sample.env environment variables within `App. Configs` -> `Environment Variables` section and define the different parameters accordingly
  - Define `Persistent Directories`:
    - `/erddapData/` or defined `bigParentDirectory` environment variable
    - `/datasets/` map to the local path on the server the file datasets are mounted
    - `/algae_explorer` mapped to the directory on the server where the `algae explorer` files are mounted
- Generate SSH key for GitHub CI
- Add public key to  ` ~/.ssh/authorized_keys` within remote server
- Define Environment on GitHub
  - Create new Environment
  - Add environment protection (optional)
  - Add Environment Secrets:
    - CAPROVER_TOKEN
    - SSH_HOST
    - SSH_USERNAME
    - SSH_KEY
    - SSH_PORT
  - Add Environment Variables:
    - CAPROVER_URL
    - CAPROVER_APP_NAME
    - NAME
    - URL

### Testing environment

For local development, make a copy of `sample.env` file as `.env`.
Update the environment variables to match the deployed parameters.
Omit the email parameters and baseHttpsUrl and baseUrl.

Add test files if needed within the `datasets/` directory.

Run docker-compose

```console
docker-compose up -d
```

If successful, you should be able to access your local ERDDAP instance at <http://localhost:{HOST_PORT}/erddap> (default: <http://localhost:8080/erddap>)

## Hakai Database integration
All views and tables generated from the different SQL queries made available in the `view` directory are run nightly from the hecate.hakai.org server from the master branch.

## Continuous Integration
All commits to this repository are tested by different linter through a PR or commit to the development and master branches:
- python: black, isort
- sql: sqlfluff
- markdown
- xml

We are using the super-linter library to generate the different automated integration tests.

If the linter tests and erddap_deploy tests pass, changes will automatically be reflected on the associated deployment via:

- Redeployment of the application: on changes to erddap/**/*,Dockerfile or environment variables.
- Update of the datasets.xml: on changes to datasets.d or datasets.xml

