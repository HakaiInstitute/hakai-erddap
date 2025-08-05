#!/bin/sh

#
# Run the views (.sql files) defined in the hakai-datases repo 'views' folder
# Each view corresponds with an erddap dataset
#
# Runs nightly right after the SN views are re-created
#
# Contact Nate if there are issues with this script

git --git-dir hakai-erddap/.git pull

export PGUSER=$(cat .pguser)
export PGPASSWORD=$(cat .pgpass)
export PGHOST=$(cat .pghost)
export PGDATABASE=$(cat .pgdb)
export QUIET=1
{
    echo "SET ROLE hakai_erddap_user;"
    for f in $HOME/hakai-erddap/views/*.sql;do echo "BEGIN;";cat $f;echo "COMMIT;";done;
    echo "GRANT ALL ON ALL TABLES IN SCHEMA erddap TO hakai_admin;"
} | PGOPTIONS='--client-min-messages=warning' psql -X --quiet --pset pager=off >/dev/null
