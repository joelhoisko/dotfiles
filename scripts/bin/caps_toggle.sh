#!/bin/bash

CURRENT_SETTING=$(setxkbmap -query | grep options | sed 's/options:\s*//g')
if [ "$CURRENT_SETTING" = "caps:swapescape" ]; then
    setxkbmap -option
    notify-send --icon=preferences-desktop-keyboard "Restore Caps/Esc"
else
    setxkbmap -option caps:swapescape
    notify-send --icon=preferences-desktop-keyboard "Swapped Caps/Esc"
fi
