#!/bin/bash
ERDDAP_DATASETS_REPO="$(git remote get-url origin)"
echo "ERDDAP_DATASETS_REPO: $ERDDAP_DATASETS_REPO"

make build-run

