#!/bin/bash

shopt -s lastpipe
fd -H . $HOME --type file | sk --prompt="select a file:" | read -r uwu

[ -z "${uwu}" ] && exit 1

IFS=: read -ra path <<< "$PATH"
for p in "${path[@]}"
do
	ls "$p"
done | uniq | sk --prompt='select an app to open file:' | read cmd

[ -z "${cmd}" ] && exit 1

setsid /usr/bin/env sh -c "foot ${cmd} \"${uwu}\"" >&/dev/null &
sleep 0.3s
