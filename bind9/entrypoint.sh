#!/bin/sh
export TTL="\$TTL"
for tmp_file in /etc/bind/*.template; do
    file="${tmp_file%.template}"
    envsubst < "$tmp_file" > "$file"
    # rm $tmp_file
done
