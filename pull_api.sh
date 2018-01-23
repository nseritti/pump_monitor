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

#Insert the file to mysql
#mysql -uroot pump_analysis --local-infile << EOF
#LOAD DATA INFILE '/opt/projects/pump_monitor/data_files/${data_file}.csv'
#INTO TABLE pump_analysis
#FIELDS TERMINATED BY ',';
#EOF

