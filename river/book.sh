#!/bin/sh

shopt -s lastpipe

DOC="$HOME/Documents"

find "$DOC" -name "*.pdf" | fuzzel -p "read book: " -x 30 -w 145 -y 70 -l 20 --fuzzy-min-length 3 --fuzzy-max-distance 3 -d | read -r book

[ -z "${book}" ]  && exit

command="zathura \"$book\""
riverctl spawn "${command}"
