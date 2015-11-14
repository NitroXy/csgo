#!/bin/sh

username="..."

dir=$(dirname $0)
exec "${dir}/steamcmd.sh" +login "${username}" +force_install_dir "${dir}/csgo" +app_update 740 validate +quit
