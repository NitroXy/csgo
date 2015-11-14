#!/bin/sh

username="..."
exec /home/esport/steamcmd.sh +login "${username}" +force_install_dir /home/esport/csgo +app_update 740 validate +quit
