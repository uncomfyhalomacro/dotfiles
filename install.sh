#!/bin/bash

echo -e "This will remove your previous configuration assuming it is a symlink, are you sure? y - confirm; any letter - to abort"

read answer

if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then

    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

    for i in {river,mako,yambar,foot,nvim}; do
        CONF_DIR="$HOME/.config/$i"
        if [ -d  $CONF_DIR ]; then
            BACKUP_DIR=$HOME/.config/dotfile.backup-`date +%m%d%H%M%S`
            mkdir -p "$BACKUP_DIR"
            cp -frv $CONF_DIR "$BACKUP_DIR"
            cp -rLpTv $SCRIPT_DIR/$i $CONF_DIR
        else
            # Check if it is a symlink file
            if [ -L $CONF_DIR ]; then
                rm $CONF_DIR
                cp -rLpTv $SCRIPT_DIR/$i $CONF_DIR 
            else
                cp -rLpTv $SCRIPT_DIR/$i $CONF_DIR
            fi
        fi
    done
    cp -fv $SCRIPT_DIR/bin/mygrimshot.sh $HOME/.local/bin
    cp -fv $SCRIPT_DIR/bin/wayriver.sh $HOME/wayriver.sh
    cp -fv $SCRIPT_DIR/bin/river-run.sh $HOME/.local/bin/river-run.sh
    cp -fv $SCRIPT_DIR/bin/footq $HOME/.local/bin/footq
    cp -fv $SCRIPT_DIR/bin/manbat $HOME/.local/bin/manbat
    cp -rLpT $SCRIPT_DIR/service $HOME/service 
    for i in {.zshrc,.zprofile,.zlogin,.zshenv}; do 
        cp -rfv $i $HOME/${i}
    done
    echo "Done copying configs"

    echo "Now replacing paths using host username: $USER"
    sleep 2s
	sed -i 's/uncomfy/'"${USER}"'/g' $HOME/.config/yambar/config.yml
    echo "DONE"
else
    echo "Aborted"
    exit
fi


