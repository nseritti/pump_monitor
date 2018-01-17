#!/bin/bash

dir=data_files
file_prefix=$(date +%F_%H%M)
data_file=$(date +%F_%H%M)_datafile

cd /opt/projects/pump_monitor/

if [[ ! -e $dir ]]; then
    mkdir $dir
elif [[ ! -d $dir ]]; then
    echo "$dir already exists but is not a directory" 1>&2
fi

#pull from the coinmarketcap api
curl -k https://api.coinmarketcap.com/v1/ticker/?limit=0 >> ./data_files/${data_file}.json

#parse the json to csv
./json_to_csv.py ./data_files/${data_file}.json ./data_files/${data_file}.csv

#cleanup crappy line endings
dos2unix ./data_files/${data_file}.csv

#append runtime date to csv
sed -i s/$/,$(date +%F)/ ./data_files/${data_file}.csv

