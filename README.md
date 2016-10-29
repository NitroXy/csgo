NitroXy CS:GO Server config
===========================

1. Add tokens to `tokens.txt`.
1. Run `./update.sh` to install/update CS:GO dedicated server.
1. Run `./run.sh <port>` in a screen/tmux.

eBot
----
1. Install and configure using [eBoot](https://github.com/burnedram/eBoot-CSGO).
1. Install [CSay](http://www.esport-tools.net/download/CSay-CSGO.zip) addon for csgo-ds for fancy colored chat messages.
The `addons` folder that is contained in the .zip should be placed in the `csgo` folder, where `cfg`, `maps` etc. is located.
If instructions unclear and somethingsomething stuck in ceiling fan, then try following [this](http://public.ebot.wedeho.be).

Client bindings
---------------

If eBot is not used then these optional keybindings can be used (beware that this makes it easy to run the scripts but beware of accidentally executing them during a live round)

    bind "F1" "connect cs1"
    bind "F2" "connect cs2"
    bind "F8" "rcon bot_kick"
    bind "F9" "rcon exec knife"
    bind "F10" "rcon exec live"
    bind "F11" "rcon mp_swapteams"
    bind "F12" "toggle_pause"
    alias "toggle_pause" "toggle_pause_1"
    alias "toggle_pause_1" "rcon mp_pause_match;   alias toggle_pause toggle_pause_2"
    alias "toggle_pause_2" "rcon mp_unpause_match; alias toggle_pause toggle_pause_1"
