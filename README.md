NitroXy CS:GO Server config
===========================

1. Download and install [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) to the same folder as the scripts.
1. Set username and account token in `update.sh` and `run.sh`
1. Run `update.sh` to install/update CS:GO dedicated server.
1. Copy files from `cfg` folder into CS:GO `cfg` folder.
1. Run `run.sh` in a screen.

Client bindings
---------------

Optional keybindings (beware that this makes it easy to run the scripts but beware of accidentally executing them during a live round)

    bind "F1" "connect cs1"
    bind "F2" "connect cs2"
    bind "F8" "rcon bot_kick"
    bind "F9" "rcon exec knife"
    bind "F10" "rcon exec live"
    bind "F11" "rcon mp_swapteams"
    bind "F12" "rcon mp_pause_match"
