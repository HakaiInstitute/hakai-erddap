---
name: New ERDDAP Dataset Submission
about: To Do list associated to a new Hakai ERDDAP dataset submission.
title: 'New ERDDAP Dataset: datasetID'
labels: 'new submission'
assignees: ''

---

## Hakai Dataset Submission
This github issue present the different steps associated with the creation of a Hakai ERDDAP dataset.

*Related links:*
- [ ] Hakai Metadata Form:
- [ ] Hakai Catalogue:
- [ ] Production ERDDAP Dataset: https://catalogue.hakai.org/erddap/...
--------

## Submission steps
### Initial Submission
- [ ] Original Data Source is available
- [ ] Hakai Metadata Form is completed

### ERDDAP Dataset Creation (Data Integrator)
- [ ] Dataset Transformation
- [ ] Near Real-time Data Integration
- [ ] QARTOD Integration
- [ ] ERDDAP Integration
- [ ] ERDDAP Dataset Documentation
- [ ] ERDDAP tested locally
- [ ] Add Dataset to Development Branch
- [ ] ERDDAP Global Attributes are matching the Metadata Record associated fields (see Metadata Form ERDDAP Snippet)

### Related Issues
List any issues related to this dataset submission that need to be reviewed prior to the submission.
- [ ] ...

### Dataset Approuval
The dataset provider needs to approve the dataset present within the Hakai ERDDAP development server prior to make it available in production.
- [ ] Development Dataset approved

-----
### Dataset Deployment in Production
This section list the differents steps needed to make an ERDDPAP dataset available in production.

#### ERDDAP
- [ ] Merge Development  ERDDAP Dataset to Production Branch
- [ ] Confirm ERDDAP Dataset is running on [Hakai Production ERDDAP Server](https://catalogue.hakai.org/erddap/index.html)
#### Metadata Record
- [ ] Confirm Metadata Record is pointing to the Production ERDDAP dataset
- [ ] Publish Metadata record
- [ ] Confirm Metadata record is available appropriately on the [Hakai](https://catalogue.hakai.org/dataset)

### DOI
- [ ] Generate DOI associated with Hakai CKAN dataset page?
- [ ] COMPLETED
