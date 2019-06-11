#!/bin/bash

LANG1="us"
LANG2="fi"
CURRENT_LANG=$(setxkbmap -query | tail -n 1 | cut -f6 -d ' ')
if [ "$CURRENT_LANG" = $LANG1 ]; then
    setxkbmap $LANG2
    notify-send --icon=preferences-desktop-keyboard "Switched to $LANG2"
else
    setxkbmap $LANG1
    notify-send --icon=preferences-desktop-keyboard "Switched to $LANG1"
    
fi
