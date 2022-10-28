#!/bin/env bash

shopt -s lastpipe

ps -U "$USER" -u "$USER" ao comm,pid | tail -n +2 | fuzzel -p "kill process:" -d | awk -f "$HOME/.config/river/script.awk" | read -r process_id

kill -9 "${process_id}"
