#!/bin/bash
# Path to the datasets.xml file
file_path="/usr/local/tomcat/content/erddap/datasets.xml"
# Get a list of all environment variables starting with "ERDDAP_SECRET_"
secret_vars=$(env | grep '^ERDDAP_SECRET_' | awk -F= '{print $1}')
# Loop through each secret variable and replace its occurrence in the file
for var in $secret_vars; do
    # Get the corresponding value of the environment variable
    value=${!var}
    
    # Replace the placeholder string with the environment variable's value
    sed -i "s|__${var}__|${value}|g" $file_path
done
echo "Environment variables replaced in $file_path"