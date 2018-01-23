#!/bin/bash

dir=data_files
file_prefix=$(date +%F_%H%M)
data_file=$(date +%F_%H%M)_datafile

if [[ ! -e $dir ]]; then
    mkdir $dir
elif [[ ! -d $dir ]]; then
    echo "$dir already exists but is not a directory" 1>&2
fi

cd /opt/projects/seritn2/pump_monitor

#pull from the coinmarketcap api
curl -k https://api.coinmarketcap.com/v1/ticker/?limit=0 >> ./data_files/${data_file}.json

#parse the json to csv
#old json to csv that sucks
# ./json_to_csv.py ./data_files/${data_file}.json ./data_files/${data_file}.csv
#new json to csv
cat ./data_files/${data_file}.json | /usr/local/bin/jsonv id,name,symbol,rank,price_usd,price_btc,24h_volume_usd,market_cap_usd,available_supply,total_supply,max_supply,percent_change_1h,percent_change_24h,percent_change_7d,last_updated >> ./data_files/${data_file}.csv

#cleanup crappy line endings
dos2unix ./data_files/${data_file}.csv

#append runtime date to csv, append NULL to primary column, delete column header line
sed -i s/$/,$(date +%F)/ ./data_files/${data_file}.csv
sed -i s/^/NULL,/ ./data_files/${data_file}.csv
sed -i s/\"//g ./data_files/${data_file}.csv
#sed -i /market_cap_usd,price_usd.*$/d ./data_files/${data_file}.csv

#make sure there is enough historical data to load the tables
if [[ $(ls -lahrt ./data_files/*.csv | tail -n 6 | awk '{print $9}' | wc -l ) -lt 6 ]]; then
  echo "Not enough history to load data"
  exit 0
fi
#Store the last 6 entries into an array
    file_list_array=( $(ls -lahrt ./data_files/*.csv | tail -n 6 | awk '{print $9}') )
#Truncate the tables in prep for new data load
    for x in {0..5};do  mysql pump_analysis <<< "truncate table pump_analysis_$(( $x + 1 ));";done
#Relaoad tables
    for x in {0..5};do mysql pump_analysis --local-infile <<< "LOAD DATA INFILE '/opt/projects/seritn2/pump_monitor/${file_list_array[${x}]}' INTO TABLE pump_analysis_$(( $x + 1 )) FIELDS TERMINATED BY ',';";done
