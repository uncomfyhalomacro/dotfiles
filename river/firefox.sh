#!/bin/bash
shopt -s lastpipe

firefoxprofile=("personal" "social" "school")

printf "%s\n" "${firefoxprofile[@]}" | fuzzel -p "launch firefox profile: " -l 3 --dmenu --no-run-if-empty | read -r profile
command="flatpak --user run org.mozilla.firefox -P \"${profile}\""

[ -z "${profile}" ]  && exit

riverctl spawn "${command}"
