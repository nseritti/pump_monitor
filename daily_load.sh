#!/bin/bash

dir=data_files
file_prefix=$(date +%F)
data_file=$(date +%F)*_datafile

cd /opt/projects/pump_monitor/

if [[ ! -e $dir ]]; then
    mkdir $dir
elif [[ ! -d $dir ]]; then
    echo "$dir already exists but is not a directory" 1>&2
fi

# truncate table to insert today's data
mysql -uroot pump_analysis << EOF
truncate table pump_analysis_daily;
EOF

#Insert the file to mysql
for files in /opt/projects/pump_monitor/data_files/${data_file}.csv; do  
mysql -uroot pump_analysis --local-infile << EOF
LOAD DATA INFILE '${files}'
INTO TABLE pump_analysis_daily
FIELDS TERMINATED BY ',';
EOF
done
