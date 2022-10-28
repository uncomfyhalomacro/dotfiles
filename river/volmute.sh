#!/bin/bash

ismuted="$(pamixer --get-mute)"

if [ "${ismuted}" = "false" ]; then
	pamixer --toggle-mute; echo 0 > /run/user/1000/wobvolume.sock
elif [ "${ismuted}" = "true" ]; then
	pamixer --toggle-mute; pamixer --get-volume > /run/user/1000/wobvolume.sock
fi


