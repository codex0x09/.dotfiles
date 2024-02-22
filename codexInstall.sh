#!/bin/bash

#TODO:
<<vim
    #         -- I forget what I was trying to do --
    #          *= Advice: write your plan first =*

** make a program, that provide the following features :
- interactive dailog menue
- links the dotfiles to home [~]
- make a Backup for the old user's dotfiles before install the CodexDotfiles

** future features #TODO :
-- push to upstream (current dotfiles)
vim

linking_dots() {
    echo "[====================} Linking {=========================]";
    local i=1
    while read line
    do
        # avoid .git dir to be linked
        if  [[ "$line" != ".git" ]]
        then
            # linking dots to home
            ln -s $HOME/.dotfiles/$line $HOME/$line && \
                echo -e " $i  {\e[1;33m $line \e[00m}\e[1;32m ------------> \e[00m ~ /\e[1;31m$line \e[32m Successfully \e[00m "
        fi
        (( i++ ))
        # it'll list only dot files/dirs without (./ ../)dirs
    done < <(ls -a $HOME/.dotfiles | grep "^\...")
    echo "{=======================================================}";
}

### make a Backup for the old user's dotfiles
backup_old_dots(){
    # nested function to avoid huge code (don't repeate your self 'dry')
    move_dotsToBackup(){
        while read line
        do
            mv "$line"  "$HOME/.dotfiles.backup"
        done < <(ls -a $HOME/ | grep "^\...")
    }
    # make '.dotfiles.backup' dir if not exist and save old stuff in it
    if ! [[ -d "$HOME/.dotfiles" ]]
    then
        mkdir -p $HOME/.dotfiles.backup
        move_dotsToBackup
    else
        mkdir -p $HOME/.dotfiles.backup
        mv $HOME/.dotfiles{,.backup}
        move_dotsToBackup
    fi
    # unset nested function to free memory
    unset -f move_dotsToBackup
}

main(){
    # design a nice menue and finish your prog cody (>o.O<) come-on !!
} # main
