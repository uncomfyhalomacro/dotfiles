#!/bin/sh
# Launcher for executables in $PATH

shopt -s lastpipe

IFS=: read -ra path <<< "$PATH"
for p in "${path[@]}"
do
	ls "$p"
done | uniq | fuzzel -P "launch: " -p 0 -s f2d26fff -S 173f4fff -t 35b9abff -b 061C2Aff -r 0 -C 81c13bff -f "JetBrains Mono:size=10" -x 30 -w 35 -y 70 -p 0 -l 20 --fuzzy-min-length 3 --fuzzy-max-distance 3 --dmenu --no-run-if-empty | read cmd

[ -z "${cmd}" ] && exit

riverctl spawn "${cmd}"

