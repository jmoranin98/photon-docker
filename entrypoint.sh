#!/bin/bash

if [ ! -d "/photon/photon_data/elasticsearch" ]; then
    echo "Downloading search index"

    USER_AGENT="docker: thomasnordquist/photon-geocoder"
    wget --user-agent="$USER_AGENT" -O - https://download1.graphhopper.com/public/extracts/by-country-code/pe/photon-db-pe-latest.tar.bz2 | bzip2 -cd | tar x
fi

if [ -d "/photon/photon_data/elasticsearch" ]; then
    echo "Start photon"
    java -jar photon.jar $@
else
    echo "Could not start photon, the search index could not be found"
fi
