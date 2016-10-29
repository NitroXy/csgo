#!/bin/bash

if [ -z "$1" ]; then
        echo "Usage: $0 <port>"
        exit
fi

tokens=()
while read line
do
        if [[ $line == \#* ]]; then
                continue
        fi
        split=( $line )
        tokens+=( [${split[0]}]=${split[1]} )
done < tokens.txt
token=${tokens[$1]}

if [ -z "$token" ]; then
        echo -n "WARNING! No Steam token set for port $1"
        sleep 1
        echo -n "."
        sleep 1
        echo -n "."
        sleep 1
        echo "."
else
        token="+sv_setsteamaccount $token"
fi

dir=$(dirname $0)
cd "${dir}/csgo-ds"
export PATH=$PATH:/sbin
exec ./srcds_run -game csgo \
    -console -usercon -autoupdate -tickrate 128 \
    -maxplayers 14 -maxplayers_override 14 \
    $token \
    +ip 0.0.0.0 \
    +game_type "0" +game_mode "1" \
    +mapgroup mg_active \
    +map de_dust2

