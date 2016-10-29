#!/bin/sh

dir=$(dirname $0)
exec "${dir}/steamcmd/steamcmd.sh" +login "anonymous" +force_install_dir "${dir}/csgo-ds" +app_update 740 validate +quit
