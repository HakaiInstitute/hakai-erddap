# Hakai Datasets

This repository contains different components needed to produce and maintain Hakai's datasets on Hakai ERDDAP servers.
Server update status:

All datasets made available within the `datasets.d` folder in the ERDDAP XML format are made available on the production server.

Hakai deploy ERDDAP as docker containers by using the [docker-erddap](https://github.com/axiom-data-science/docker-erddap) image. Continuous Integration is handled via the [erddap-deploy actions](https://github.com/HakaiInstitute/erddap-deploy) and the container configuration is handled via [CapRover](https://caprover.com/) applications.

See [GitHub Deployments](https://github.com/HakaiInstitute/hakai-erddap/deployments) for all active deployments maintained via this repository.

## Deployment

ERDDAP is deployed on <catalogue.hakai.org>, via docker-compose. 
See local `.env` file for configuration.

### Development

For local development, make a copy of `sample.env` file as `.env`.
Update the environment variables to match the deployed parameters.
Omit the email parameters and baseHttpsUrl and baseUrl.

Add test files if needed within the `datasets/` directory.

Run docker-compose

```console
docker-compose up -d
```

If successful, you should be able to access your local ERDDAP instance at <http://localhost:{HOST_PORT}/erddap> (default: <http://localhost:8080/erddap>)

## How to create a new dataset

This is a step by step procedure to generate a new dataset:

1. See [development](#development) for create a local testing environment.
2. If the new dataset is form files, add the datawithin the [datasets](datasets) folder. Create a subdirectory for this dataset and structure the data accorindgly.
3. Active your docker daemon
4. Run the bash command: `sh Dasds.sh`
5. Answer the different questions accordingly to generate a first draft of the 
    xml associated with this dataset.
6. Importat! All the paths requested by ERDDAP should be referencing the base 
   directory (/datasets) within the container which is the local `./datasets/`
   folder mounted within the container.
7. Once all the answers completed, see what ERDDAP returned to you. 
8. If sucessfully, completed ERDDAP should return the dataset.xml associated to this dataset. 
9. You can also retrieve it at: [here](erddap/data/logs/GenerateDatasetsXml.out) within the log [folder](erddap/data/logs/)
10. Copy this xml file to [./datasets.d](./datasets.d/), and name the file with its datasetID.
11. Add the different missing metadata.
12. Once satisfied, you can test the dataset with the command `sh DasDds.sh`
13. Fix all the issues brought up by DasDds.sh
14. Once completed, restart your local instance of ERDDAP and see if that dataset is now available.

### Development Server

1. Once satisfied, commit the changes to the `development` branch. 
3. If needed, copy the file data to <goose.hakai.org> server within (/data2/erddap_data) and match the path you've used initially within [./datasets/](./datasets/)
3. Any changes to the development branch should be reflected on the [development
   erddap](https://goose.hakai.org/erddap) autimacally via a github action
4. Review development version.

### Production server

1. From the development branch, create a release branch.
2. Merge Master to the release branch, ignore any changes associated to other datasets in development
3. Create PR to master
4. Revise PR
5. Make sure that the file data (if needed) is available within the `catalogue.hakai.org` server at `/data/erddap_data`
6. Once happy with the PR, merge it.

### Sync datasets metadata

`Hakai-erddap` is using the `hakai-metadata-conversion` package to sync
periodically the different datasets metadata based on the latest changes
made within the Hakai Catalogue.

If any changes are available a PR to development should be automatically
generated. Merge the changes to development, and follow a similar method as
described within the [production server section](production-server).

## Hakai Database integration

All views and tables generated from the different SQL queries made available in
the `view` directory are run nightly from the hecate.hakai.org server from the
master branch with the bash script [erddap_create_views.sh](erddap_create_views.sh)

## Sync ERDDAP datasets with hakai database views

ERDDAP relies on the different views and tables present within the erddap schema of the hakai database. 

Some of those views are a union of mulitple tables hosted within sn_sa schema. We use the module `update_erddap_views.py` 
to keep the different views in sync with all the associated tables. Use poetry to install the required package in `pyproject.toml`
and run the following command:

```
python update_erddap_views.py
```

Commit any changes made to the different files within `views/*.sql` to the main branch.

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

