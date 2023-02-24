#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.9/g' package/base-files/files/bin/config_generate

# Add Geo Files
mkdir -p ./files/usr/share/v2ray
curl -fsSL https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat -o ./files/usr/share/v2ray/geoip.dat
curl -fsSL https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat -o ./files/usr/share/v2ray/geosite.dat
chmod -R 777 ./files/usr/share/v2ray
