# Hakai Erddap

| Category | Status |
|-|-|
| **Development Deployment** | [![Update Development ERDDAP server](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/update-erddap-development-server.yaml/badge.svg)](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/update-erddap-development-server.yaml) |
| **Production Deployment** | [![Update Production ERDDAP server](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/update-erddap-production-server.yaml/badge.svg)](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/update-erddap-production-server.yaml) |
| **Metadata Sync** | [![Sync ERDDAP metadata from metadata form file repository](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/sync-metadata.yaml/badge.svg)](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/sync-metadata.yaml) |
| **Test datasets** | [![Test on PR datasets](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/test-datasets-xml.yaml/badge.svg)](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/test-datasets-xml.yaml) |
| **Validate templates** | [![Validate HakaiWatershedsStreamStations Template](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/validate-templates.yml/badge.svg)](https://github.com/HakaiInstitute/hakai-erddap/actions/workflows/validate-templates.yml) |


This repository contains different components needed to produce and maintain Hakai's datasets on Hakai ERDDAP servers. 

Hakai deploys ERDDAP as docker containers by using the [docker-erddap](https://github.com/axiom-data-science/docker-erddap) image. Continuous Integration is handled via the [github actions](https://github.com/HakaiInstitute/hakai-erddap/tree/master/.github/workflows) and the container configuration is handled via this repo.

See [GitHub Deployments](https://github.com/HakaiInstitute/hakai-erddap/deployments) for all active deployments maintained via this repository.

## Dependencies
- HakaiInstitute/hakai-metadata-entry-form-files
- HakaiInstitute/hakai-metadata-conversion
- hakaiinstitute/erddap-deploy: GitHub repository used to test erddap deployments
- hakaiinstitute/data-mobilization-team: Github team assigned reo review pull request when new metadata is merged into xml files under /datasets.d
- https://catalogue.hakai.org/erddap/: Production server where datasets are deployed when pushing to master branch
- https://development.erddap.hakai.app/erddap/: Development server where datasets are deployed when pushing to development branch
- db.hakai.org: Hakai AWS RDS instance where erddap views are located and many hakai datasets are pulled from
- axiom/docker-erddap: base docker image used to build the hakai docker containers

## Deployment

ERDDAP is deployed on <catalogue.hakai.org> and <development.erddap.hakai.app>, via docker-compose. 
See local `.env` file for configuration.

All datasets made available within the `datasets.d` folder in the ERDDAP XML format are made available as datasets on the server.

> [!NOTE]
> If using database views as the source for erddap datasets you must set the hakai_erddap_sourceURL 
> secret which is a jdbc connection string. 
> 
> Example
> `ERDDAP_SECRET_hakai_erddap_sourceUrl=jdbc:postgresql://[HOST]:[PORT]/[DATABSAE]?user=[USERNAME]&amp;password=[PASSWORD]`

## Local Development

For local development, make a copy of `sample.env` file as `.env`.
Update the environment variables to match the deployed parameters.
Omit the email parameters and baseHttpsUrl and baseUrl.

Add test files if needed within the `datasets/` directory.

Run docker-compose

```console
docker-compose -f docker-compose-local.yml up -d
```

If successful, you should be able to access your local ERDDAP instance at <http://localhost:{HOST_PORT}/erddap> (default: <http://localhost:8090/erddap>)

## How to create a new dataset

This is a step by step procedure to generate a new dataset:

### 1. Setup local test enviroment
See [development](#development) for creating a local testing environment.

### 2. Add Data
   - If the new dataset is from files, add the data within the [datasets](datasets) folder. Create a subdirectory for this dataset and structure the data accordingly.
   - If erddap will pull the data from the hakai database, identify which database view will represent in the dataset and insure it exists in the `views` folder of this repo
 
### 3. Start ERDDAP
If not already done so, start the erddap docker container

### 4. Generate Draft XML
Run the bash command: `sh GenerateDatasetsXml.sh` and answer the questions to generate a first draft of the xml associated with this dataset.
> [!IMPORTANT] 
> All the paths requested by ERDDAP should reference the base 
> directory (/datasets) within the container which is the local `./datasets/`
> folder mounted within the container.
In order for the xml to be created you must have a file in the ./datasets/ folder that matches the url you entere in to the GenerateDatasetsXml tool or a database view to connect to.


#### Example: Create a dataset from a database view
| Question              | Answer                                                 |
|-----------------------|--------------------------------------------------------|
| Which EDDType         | EDDTableFromDatabase                                   |
| URL                   | jdbc:postgresql://db.hakai.org:5432/hakai              |
| Driver name           | org.postgresql.Driver                                  |
| Connection properties | user|[DB USER]|password|[DB PASSWORD]                  |
| Catalog name          | hakai                                                  |
| Schema name           | ctd                                                    |
| Table name            | NatureTrustWaterPropertiesVerticalProfilesProvisional  |
| OrderBy               | work_area,station,start_dt,direction_flag,pressure     |
| ReloadEveryNMinutes   | 1440                                                   |
| infoUrl               |                                                        |
| institution           | Hakai Institute                                        |
| summary               |                                                        |
| title                 | test                                                   |


#### Example: Create a dataset from a collection of netCDF files
| Question                   | Answer                        |
|----------------------------|-------------------------------|
| Which EDDType              | EDDTableFromMultidimNcFiles   |
| Starting directory         | /datasets/IOS_BOT_profiles/   |
| File name regex            | .*\.nc                        |
| Full file name of one file |                               |
| DimensionsCSV              |                               |
| ReloadEveryNMinutes        | 1440                          |
| PreExtractRegex            |                               |
| PostExtractRegex           |                               |
| ExtractRegex               |                               |
| Column name for extract    |                               |
| Remove missing value rows  |                               |
| Sort files by sourceNames  |                               |
| infoUrl                    |                               |
| institution                | DFO                           |
| summary                    |                               |
| title                      | test-ios                      |
| standardizeWhat            |                               |
| treatDimensionsAs          |                               |
| cacheFromUrl               |                               |


If successfully completed, ERDDAP should return the dataset.xml associated with this dataset. You can also retrieve it [here](./erddap/data/logs/GenerateDatasetsXml.out) within the log[folder](./erddap/data/logs/) Copy this xml file to [./datasets.d](./datasets.d/), and name the file with its datasetID.

### 5. Add remaining metadata
The `addAttributes` section can be populated by downloading the erddap snippet for an existing metadata record from the [hakai metadata form](https://hakaiinstitute.github.io/hakai-metadata-entry-form/#/en/hakai). Alternitivly you can fill this out by hand.

### 6. Test Dataset
Once satisfied, you can test the dataset with the command `sh DasDds.sh`. If issues are identified, fix and rerun DasDds.sh

### 7. Deploy Locally
Once you are happy with the dataset.xml, restart your local instance of ERDDAP and see if that dataset is now available.

### 8. Deploy to Development Server
- commit the changes to the `development` branch. 
- If needed, copy the file data to <erddap.hakai.app> server within (/home/hakai/hakai-erddap-dev/erddap/data) and match the path you've used initially within [./datasets/](./datasets/)
- Any changes to the development branch should be reflected on the [development
   erddap](https://development.erddap.hakai.app/erddap) automatically via a github action
- Review development version.

### 9. Production server

- From the development branch, create a release branch.
- Merge Master to the release branch, ignore any changes associated to other datasets in development
- Create PR to master
- Revise PR
- Make sure that the file data (if needed) is available within the `catalogue.hakai.org` server at `/data/erddap_data`
- Once happy with the PR, merge it.

## Sync datasets metadata

`Hakai-erddap` uses the [hakai-metadata-conversion](https://github.com/HakaiInstitute/hakai-metadata-conversion) repo in a [github action](https://github.com/HakaiInstitute/hakai-erddap/.github/workflows/sync-metadata.yaml) to sync dataset metadata based on the latest changes
made within the [Hakai Metadta Form](https://hakaiinstitute.github.io/hakai-metadata-entry-form/#/en/hakai). Yaml files are pulled from the [hakai-metadata-entry-form-files](https://github.com/HakaiInstitute/hakai-metadata-entry-form-files) repo, converted to erddap metadata format and merged into existing xml files located in the datasets.d folder.

When changes are made to the form, a PR to development is automatically generated. Review and merge the changes to development, then follow a similar method as described within the [production server step](#9-production-server) to deploy these changes to production.

## Hakai Database ERDDAP views 

All views and tables generated from the different SQL queries made available in
the `view` directory are run nightly from the `hecate.hakai.org` server from the
master branch with the bash script [erddap_create_views.sh](erddap_create_views.sh)

example crontab snippet
``` 
# Reprocess all data on a remote server every day
40 3 * * *	/bin/bash $HOME/hakai-sensor-network/sensor-network-tools/initate-remote-process-sn-data.bash -P -R -S >> $HOME/logs/publish-sn-data.log 2>&1 && /bin/bash $HOME/hakai-erddap/erddap_create_views.sh > /dev/null
```

## How to add modify data in an existing ERDDAP record

Start your entire process by merging to the `development` branch. This is where all testing should occur. 

### 1. Modify the either the `*.sql` or `.sql.j2` files in the `views/` folder.

This is where you decide upon your data model, add columns and generally figure out what your data will look like. Be sure to test your queries of the `hakaidev` database rather than the `hakai` production database.

### 2. Update the XML file in the `datasets.d/` directory that corresponding to the data you have modified

Any changes to the view need to be reflected in the corresponding XML file

### 3. Test Dataset

Once satisfied, you can test the dataset with the command `sh DasDds.sh`. If issues are identified, fix and rerun DasDds.sh. `DasDds.sh` is setup to run on a live container so make
sure that the correct container name is specified in the `DasDds.sh` file itself.

### 4. Update views

Refresh the views with your updated `*.sql` files using the `erddap_create_views.sh` script. This script uses dotfiles to specific which databases is being used
so be very sure that you are updating the correct database. In this step, it is very possible that you will encounter additional issues that may require you to
jump back up to number 3. This is exactly where you should be using the development version of ERDDAP. If you make significant changes, it may just be easier to
delete the view completely and recreate it.

### 5. Re-deploy ERDDAP

This step may not be explicitly required because some automation steps (i.e. merging a PR) mioght do it for you. However in practice it often is helpful.

```bash
git pull
sudo docker compose build
sudo docker compose up -d
```

## More on syncing ERDDAP datasets with hakai database views

ERDDAP relies on the different views and tables present within the erddap schema of the hakai database. 

Some of those views are a union of mulitple tables hosted within sn_sa schema. We use the module `generate_view_sql.py` 
to keep the different views in sync with all the associated tables. Use poetry to install the required package in `pyproject.toml`
and run the following command:

```
python generate_view_sql.py
```

If you are _just_ updating the jinja templates, you can run the command with the `--jinja-only` flag to only update the jinja templates without needing to access the database:

```
python generate_view_sql.py --jinja-only
```

The `views/HakaiWatershedsStreamStations.yaml` config determines how they are updated.

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

