#!/bin/bash
# set up the array of DNS servers
servers=(87.194.255.154 87.194.255.155 8.8.8.8 8.8.4.4 208.67.222.222 208.67.220.220 194.74.65.68 194.74.65.69 158.43.240.4 158.43.240.3 83.146.21.5 83.146.21.6 194.72.6.57 194.73.82.242 62.6.40.162 62.6.40.178 87.194.0.66 87.194.0.67)
 
query="dig"
 
# loop through all servers
for server in ${servers[@]}
do
    query="$query @$server $1 +short"
done
 
# run the dig command
$query