#!/bin/bash

if [[ -n $ERDDAP_DATASETS_REPO_URL ]]; then
    erddap_deploy sync
fi
