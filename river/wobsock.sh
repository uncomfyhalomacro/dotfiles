#!/usr/bin/env bash
killall -q wob
while pgrep -x wob >/dev/null; do sleep 1; done
export WOBSOCKVOLUME="${XDG_RUNTIME_DIR}/wobvolume.sock"
export WOBSOCKBRIGHTNESS="${XDG_RUNTIME_DIR}/wobbacklight.sock"
riverctl spawn "mkfifo "${WOBSOCKVOLUME}""
riverctl spawn "mkfifo "${WOBSOCKBRIGHTNESS}""
tail -f "${WOBSOCKVOLUME}" | wob --background-color "#81A1C1DD" --border-color "#000000DD" & 
tail -f "${WOBSOCKBRIGHTNESS}" | wob --background-color "#E0C287DD" --border-color "#E0C287DD" &
