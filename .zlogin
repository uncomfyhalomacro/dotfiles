#if [[ -z $WAYLAND_DISPLAY && $(tty) = "/dev/tty1" ]]; then
    #exec river-run.sh
#fi
#
pgrep -f "^runsvdir ${SVDIR}" &&
    echo "service is already running..."

exec runsvdir ${SVDIR} \
    "log: ..........................................." & disown


