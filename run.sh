#!/bin/bash

cd /home/esport/csgo
export PATH=$PATH:/sbin
exec ./srcds_run -game csgo \
    -console -usercon -autoupdate -tickrate 128 \
    -maxplayers_override 14 \
    +ip 0.0.0.0 \
    +game_type "0" +game_mode "1" \
    +mapgroup mg_active \
    +map de_dust2
