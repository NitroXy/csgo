NitroXy CS:GO Server config
===========================

1. Set username and account token in `update.sh` and `run.sh`
2. Run `update.sh` to install/update CS:GO dedicated server.
3. Copy files from `cfg` folder into CS:GO `cfg` folder.
4. Run `run.sh` in a screen.

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
