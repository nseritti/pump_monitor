# pump_monitor

## Prerequisites

These scripts assume that you have the following installed

- jsonv [Github Link] (https://github.com/archan937/jsonv.sh)
- mysql/mariadb server

## Installation

###### Export your http/https proxies

`export http_proxy=httpproxy.domain.com; export https_proxy=httpsproxy.domain.com`

###### Install jsonv

`curl -Ls https://raw.github.com/archan937/jsonv.sh/master/install.sh | bash`

###### Clone this repository

`git clone git@github.com:nseritti/pump_monitor.git`

###### Use the DDL to create the tables necessary for analysis

Please note this assumes root privleges and local access to the DB. You may use any user with appropriate access.

`mysql -u root < pump_analysis.sql`

###### Use the pull_api.sh script to load the tables

`./pull_api`

###### Use the example query scripts to pull the data from the tables

`mysql pump_analysis < strict_query2.sql`

