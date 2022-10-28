#!/bin/bash

shopt -s lastpipe

for i in $(seq 1 9)
do
    printf '%s\n' "$i"
done | fuzzel -p \
        "Select tag: " \
        -l 9 \
        --dmenu \
        --no-run-if-empty | read -r uwu

tag="$((1 << ("$uwu" - 1)))"
riverctl set-focused-tags $tag
