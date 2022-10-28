#!/bin/bash

shopt -s lastpipe

if [ "$1" == "act" ]
then
    fnottctl list | fuzzel -P \
        "Select notif to act on: " \
        -p 0 \
        -s f2d26fff \
        -S 173f4fff \
        -t 35b9abff \
        -b 061C2Aff \
        -r 0 \
        -C 81c13bff \
        -f "JetBrains Mono:size=8" \
        -x 30 \
        -w 45 \
        -y 70 \
        -p 0 \
        -l 20 \
        --dmenu \
        --no-run-if-empty | read -r uwu

    fnottctl actions "$(echo "${uwu}" | cut -d':' -f1)"
else
    fnottctl list | fuzzel -P \
        "Select notif to dismiss: " \
        -p 0 \
        -s f2d26fff \
        -S 173f4fff \
        -t 35b9abff \
        -b 061C2Aff \
        -r 0 \
        -C 81c13bff \
        -f "JetBrains Mono:size=8" \
        -x 30 \
        -w 45 \
        -y 70 \
        -p 0 \
        -l 20 \
        --dmenu \
        --no-run-if-empty | read -r uwu

    fnottctl dismiss "$(echo "${uwu}" | cut -d':' -f1)"
fi





