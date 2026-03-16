#!/bin/sh
set -eu

domain="dolovcak"
token="$(cat /home/sysadmin/scripts/duckdns-token)"
logfile="/var/log/ddns-update.log"
url="https://www.duckdns.org/update?domains=$domain&token=$token&ip="

curl "$url" --output "$logfile" 
