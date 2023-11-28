#!/bin/sh

for var in $(env); do
    if echo $var | grep -q 'GH_.*$'; then
        k=$(echo "$var" | cut -d "=" -f1);
        v=$(echo "$var" | cut -d "=" -f2-);
        echo "k=$k v=$v"
        sed -i "s@$k@$v@g" /usr/local/tomcat/content/erddap/datasets.xml
    fi
done