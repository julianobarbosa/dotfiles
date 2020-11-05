#!/usr/bin/env bash

# Awk out to see if tvui has been created instead of attaching to it.
# makes more sense to simply create the session if it doesn't exist...
tmux new -s tvui -d

while [ "$#" -gt 0 ]; do
        curr=$1
        shift

        case "$curr" in
        "-m")
                tmux neww -t tvui: -n mile_dta -d 'cd ~/work/mile/dist && dtalocal'
                ;;
        "-t")
                tmux neww -t tvui: -n tvui_server -d 'cd ~/work/tvui && ./tvui'
                tmux neww -t tvui: -n tvui_client -d 'cd ~/work/tvui && ./tvui'
                ;;
        *) echo "Unavailable command... $curr"
        esac
done
