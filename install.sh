#!/bin/bash

echo -e "This will remove your previous configuration assuming it is a symlink, are you sure? y - confirm; any letter - to abort"

read -r answer

if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then

    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
    cp -fv "$SCRIPT_DIR"/bin/mygrimshot.sh "$HOME"/.local/bin
    cp -fv "$SCRIPT_DIR"/bin/wayriver.sh "$HOME"/wayriver.sh
    cp -fv "$SCRIPT_DIR"/bin/river-run.sh "$HOME"/.local/bin/river-run.sh
    cp -fv "$SCRIPT_DIR"/bin/footq "$HOME"/.local/bin/footq
    cp -fv "$SCRIPT_DIR"/bin/manbat "$HOME"/.local/bin/manbat
    for i in {.zshrc,.zshenv}; do 
        cp -rfv "$i" "$HOME"/"$i"
    done
    exec "$SCRIPT_DIR"/river-config/install.sh
else
    echo "Aborted"
    exit
fi


