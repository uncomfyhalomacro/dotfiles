#!/usr/bin/env bash

shopt -s lastpipe
export EDITOR=/usr/bin/helix
USEFUL_NOTES="$HOME/useful-notes"
IFS=$'\n' read -r -d '' -a MARKDOWN <<< "$(find "$USEFUL_NOTES" -name "*.md")"
NOTES=( ${MARKDOWN[@]} "Create new note" )
for i in "${NOTES[@]}"; do echo "$i"; done | sort | fuzzel -p "notes: " -w 50 -d --no-run-if-empty | read -r answer
[ -z "${answer}" ] && exit
if [ "${answer}" == "Create new note" ]
then
	command="/usr/bin/foot ~/.local/bin/newnotes.sh"
	setsid /usr/bin/env sh -c "${command}" >&/dev/null &
	sleep 0.3s
else
	command="/usr/bin/foot tmux new-session ${EDITOR} \"${answer}\""
	setsid /usr/bin/env sh -c "${command}" >&/dev/null &
	sleep 0.3s
fi
