#!/bin/sh
export TTL="\$TTL"
cp -R /etc/bind/bindtmps/named.conf.zones /etc/bind/named.conf.zones
cp -R /etc/bind/bindtmps/named.conf.options /etc/bind/named.conf.options

for tmp_file in /etc/bind/bindtmps/db/*; do
    filename=$(basename "$tmp_file")
    envsubst < "$tmp_file" > "/etc/bind/$filename"
    # rm $tmp_file
done
