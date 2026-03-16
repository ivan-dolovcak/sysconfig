#!/bin/sh

# https://www.duckdns.org/
# This script sends my dynamic public IP to the DDNS service.

# This script is in crontab (every 5 minutes).

domain="stroberi"
token="e1a9167b-88ce-4af4-a4ba-493b0cb6a1cf"
logfile=".ddns-update.log"
url="https://www.duckdns.org/update?domains=$domain&token=$token&ip="

curl --interface eth0 -k "$url" -o "$logfile" 
