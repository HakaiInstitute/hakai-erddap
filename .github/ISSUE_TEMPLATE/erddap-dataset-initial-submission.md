---
name: ERDDAP Dataset Initial Submission
about: 'This issue template present the general Hakai dataset submission workflow. '
title: 'Dataset Submission: Dataset ID Here'
labels: Submission
assignees: JessyBarrette

---

# Hakai Dataset Submission 
Below are listed all the different steps related to the initial submission of a dataset.

A more detailed written and visual description of every step is available respectively 
[here](https://docs.google.com/document/d/1QMU0skj7kWbxuS_cVUNkTYZSeqpa1lVsK7WJvC4hMyA/edit?usp=sharing) and [here](https://lucid.app/lucidchart/invitations/accept/ae8530a5-4a8f-435e-b17a-60aab0773f2f).

## Submission steps
### Initial Submission (Data Administrator)
- [ ] Original Data Submission
- [ ] CIOOS Metadata Form completed

### ERDDAP Dataset Creation (Data Integrator)
- [ ] Dataset Transformation  (Format label)
  - :green_circle: Format Compatible
  - :yellow_circle: Format Minor Revisions
  - :orange_circle: Format Major Revisions
  - :red_circle:  Format Incompatible/Missing Information
- [ ] Near Real-time Data Integration
- [ ] QARTOD Integration
- [ ] ERDDAP Integration
- [ ] ERDDAP Dataset Documentation
- [ ] ERDDAP Test Locally
- [ ] Add Dataset to Development Branch
- [ ] ERDDAP Global Attributes are matching the Metadata Record associated fields (see Metadata Form ERDDAP Snippet)

### Dataset Review (Data Administrator)
- [ ] Dataset Development Branch Revision (Reviewer Label)
  - :green_circle: Reviewer Approved
  - :yellow_circle: Reviewer Minor Revisions
  - :orange_circle: Reviewer Major Revisions

### Dataset Completion (Data Integrator)
#### ERDDAP
- [ ] Merge Development  ERDDAP Dataset to Production Branch
- [ ] Confirm ERDDAP Dataset is running on [Hakai Production ERDDAP Server](https://catalogue.hakai.org/erddap/index.html)
#### Metadata Record
- [ ] Confirm Metadata Record is pointing to the Production ERDDAP dataset
- [ ] Publish Metadata record
- [ ] Confirm Metadata record is available appropriately on the [Hakai Institute CKAN](https://catalogue.hakai.org/dataset)
- [ ] Confirm Metadata record is available appropriately on the [CIOOS Pacific](https://catalogue.cioospacific.ca/dataset)
- [ ] Confirm Metadata record is available appropriately on the [CIOOS National](https://catalogue.cioos.ca/dataset)

### DOI
- [ ] Generate DOI associated with Hakai CKAN dataset page
- [ ] COMPLETED
