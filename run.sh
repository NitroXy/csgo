#!/bin/bash

# Change to to the server account token
# https://steamcommunity.com/dev/managegameservers
token="..."

dir=$(dirname $0)
cd "${dir}/csgo"
export PATH=$PATH:/sbin
exec ./srcds_run -game csgo \
    -console -usercon -autoupdate -tickrate 128 \
    -maxplayers_override 14 \
    +sv_setsteamaccount "${token}" \
    +ip 0.0.0.0 \
    +game_type "0" +game_mode "1" \
    +mapgroup mg_active \
    +map de_dust2
