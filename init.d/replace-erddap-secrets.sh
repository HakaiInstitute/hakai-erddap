#!/bin/sh

for var in $(env); do
    if echo $var | grep -q 'ERDDAP_SECRET_.*$'; then
        k=$(echo "$var" | cut -d "=" -f1 | sed s/ERDDAP_SECRET_//);
        v=$(echo "$var" | cut -d "=" -f2-);
        echo "replace secrets=$k"
        sed -i "s@$k@$v@g" /usr/local/tomcat/content/erddap/datasets.xml
    fi
done