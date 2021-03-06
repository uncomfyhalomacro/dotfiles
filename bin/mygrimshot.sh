#!/bin/bash

function fullscreenshot {
    local timestamp=$(date +%m%d%H%M%S)
    local save_path=$HOME/Pictures/Screenshots/Screenshot-${timestamp}.png
    grim - | swappy -f - -o $save_path
    wl-copy < $save_path
    if [ -s $save_path ]; then
        notify-send --icon=$save_path "Screenshot in $save_path"
    else
        rm $save_path
    fi
}

function selectarea {
    local timestamp=$(date +%m%d%H%M%S)
    local save_path=$HOME/Pictures/Screenshots/Screenshot-${timestamp}.png
    grim -g "$(slurp)" - | swappy -f - -o $save_path
    wl-copy < $save_path
    if [ -s $save_path ]; then
        notify-send --icon=$save_path "Screenshot in $save_path"
    else
        rm $save_path
    fi
}

whichMode(){
    if [ "$1" = "full" ] || [ "$1" = "" ]; then
        fullscreenshot
    elif [ "$1" = "area" ]; then
        selectarea
    else
        notify-send "Please select 'area' or 'full'"
    fi
}
whichMode "$@"

