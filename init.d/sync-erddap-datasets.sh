#!/bin/bash

if [[ -n $ERDDAP_DATASETS_REPO_URL ]]; then
    erddap_deploy sync
fi

if [[ -n $UPTIME_KUMA_URL ]]; then
    erddap_deploy monitor
fi