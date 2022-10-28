#!/usr/bin/bash

# Choose wallpaper script with fuzzel and swww


shopt -s lastpipe

export WALLPAPER_PATH="$HOME/.config/river/backgrounds"

IFS=: read -ra path <<< "$WALLPAPER_PATH"
for p in "${path[@]}"
do
    ls "$p" -I "*.mp4"
done |  fuzzel \
    -p "wallpaper: " \
    -s f2d26fff \
    -S 173f4fff \
    -t 35b9abff \
    -b 1E1E2EFF \
    -r 0 -C 81c13bff \
    -f "JetBrains Mono:size=10" \
    -x 30 \
    -w 50 \
    -y 70 \
    -l 20 \
    --fuzzy-min-length 3 \
    --fuzzy-max-distance 3 \
    --dmenu --no-run-if-empty | read wallpaper

[ -z "${wallpaper}" ] && exit 1

riverctl spawn "swww img ${WALLPAPER_PATH}/${wallpaper}"
