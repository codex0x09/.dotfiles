# ~/.profile: executed by the command interpreter for login shells.

# init nvim tables, to fast lanch nvim at any time while the terminal is open !! codex[Trick] (>*.-<)!
nvim_init(){
    nvim -c"q" && \
        echo -e "\n\t\t\t\t\033[1;4;3;31mNeoVim inited, and welcome Codex (>^.^<)\033[00m\n" && \
        sleep 1.5 && clear;
} #nvim_init

# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
