#!/bin/sh
LIST="Lock\nSleep\nReboot\nShutdown"
SELECTED=$(printf $LIST | wofi -i --height 165 --width 250 -d)


case $SELECTED in
    "Lock" )
        exec swaylock \
        --screenshots \
        --clock \
        --indicator \
        --indicator-radius 150 \
        --indicator-thickness 7 \
        --effect-blur 7x5 \
        --effect-vignette 0.5:0.5 \
        --ring-color B16286 \
        --key-hl-color EBDBB2 \
        --line-color 282828 \
        --inside-color 282828 \
        --separator-color 00000000 ;;
    "Sleep" )
        exec systemctl suspend ;;
    "Reboot" )
        exec systemctl reboot ;;
    "Shutdown" )
        exec systemctl poweroff -i ;;
esac
