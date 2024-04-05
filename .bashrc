################
## Git Prompt ##
################ ##### ##
#source ~/.git-prompt.sh#
## ################### ##
# -------------Adding Git Branch To Bash Prompt

git_prompt()
{
	local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3)"
	local branch_truncated="${branch:0:30}"
	if (( ${#branch} > ${#branch_truncated} )); then
		branch="${branch_truncated}..."
	fi
	[ -n "${branch}" ] && printf "\[\033[1;2;91m\]:(${branch})\[\033[00m\]"
}

#TODO: see Bash wiki (arch wiki very helpful) , seach in the page for 'Right-justified text'
# see also in bash wiki the stackoverflow I guess what I'm looking for is live there ;)
# I'v turned every thing into function, but bash can't calc string lenght </3
# if I use \[---\] lengh will be ignore cool, but it works only in ps1 itself not in function and this is the issue

arrow(){
	printf "\[\033[01;31m\]\[\033[00m\]"
}

diagnostic(){
	local last_state=$?
	case $last_state in
		0) printf "\[\033[32m\] \[\033[00m\][\[\033[00m\]\[\033[38;5;214m\]$last_state\[\033[00m\]]" ;;
		1) printf "\[\033[31m\] \[\033[00m\][\[\033[00m\]\[\033[38;5;214m\]$last_state\[\033[00m\]]" ;;
		*) printf "\[\033[38;5;208m\] \[\033[00m\][\[\033[38;5;214m\]$last_state\[\033[00m\]]";;
	esac
}
print_dir(){
    printf "\[\033[01;34m\]\W\[\033[m\]"
}
end(){
	printf "\[\033[1;37m\]$\[\033[m\]"
}

#it works well!!
codexPs(){
	PS1="$(diagnostic)"
	PS1+=" $(arrow)"
	PS1+=" $(print_dir)"
	PS1+="$(git_prompt)"
	PS1+=" $(end) "
}
PROMPT_COMMAND=codexPs  #the PS1
######################################################################################################################
#
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# add option to /etc/inputrc to enable case-insensitive tab completion for all users
# echo 'set completion-ignore-case On' >> /etc/inputrc
# # you may have to use this instead if you are not a superuser:
# echo 'set completion-ignore-case On' | sudo tee -a /etc/inputrc
#
# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
#echo 'set completion-ignore-case On' >> ~/.inputrc
source /etc/profile.d/bash_completion.sh
#set completion-ignore-case On
#
export PATH="$HOME/.bin:$PATH"

######################################
##    Command Line Interface        ##
######################################
#*# neofetch
set -o vi
# for more info --> help bind
bind '"jk":"\e"'
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
#bind '"\C-l":clear-display'
EDITOR=vi
# Sourcing lynx.cfg , it should be sourced in .profile not here in .bashrc"I just get it dirty"
#LYNX_CFG=~/.config/lynx.cfg; export LYNX_CFG
######################################

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
source ~/.bash_aliases

# -- set less variable
# -- see :Man less at line :385 for more options, using vim for shell.
LESS="-g -i -J -M -s -w -z-4 --raw-control-chars --tabs=2 --incsearch --status-line"
#ESS="--incsearch -g -J -i -F -M -R -S -w -X -z-4"
export LESS
#
##############################################################################
#                      ###// Coloring Less ###//                             #
##############################################################################
export LESS_TERMCAP_AF=$'\E[1;92m'                 # normal text             #
export LESS_TERMCAP_mb=$'\E[1;93m'                 # begin blink             #
export LESS_TERMCAP_md=$'\E[1;36m'                 # begin bold              #
export LESS_TERMCAP_me=$'\E[0m'                    # reset bold/blink        #
export LESS_TERMCAP_so=$'\E[1;6;38;5;17;48;5;166m' # Status bar and hlsearch #
export LESS_TERMCAP_se=$'\E[0m'                    # reset reverse video     #
export LESS_TERMCAP_us=$'\E[1;91m'                 # begin underline         #
export LESS_TERMCAP_ue=$'\E[0m'                    # reset underline         #
##############################################################################

#
#{{{ ---------------------------------------------------------------------
#bsd_dots(){
#	printf "\e[38;5;160m \e[38;5;208m  \e[38;5;22m  \e[00m"
#}
#
#PS1='$(diagnostic)\[\e[1;31m\][\[\033[01;32m\]\u\[\033[00m\]\[\033[01;34m\]@\[\033[00m\]\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\[\e[1;31m\]]\[\e[m$(git_prompt)$ '
#
#red-------> \[\e[1;31m\]
#green-----> \[\e[01;32m\]
#yellow----> \[\e[01;33m\]
#blue------> \[\e[01;34m\]
#purple----> \[\e[01;35m\]
#cyan------> \[\e[01;36m\]
#gray------> \[\e[0;37m\]
#creamy----> \[\e[38;5;214m\]
#reset=----> \[\e[m\]
#
#PS1='\[\e[01;34m\][\[\e[38;5;214m\]$(diagnostic)\[\e[01;34m\]]\[\e[1;31m\]Magaman\[\e[01;34m\][\[\e[1;37m\]\W\[\e[01;34m\]]\[\e[38;5;214m\]$(git_prompt)\[\e[m\]\[\e[01;37m\]$\[\e[m\] '
#
## Activing this function before PS1 give you a line befor it, you can rename the function nothing is matter
## you get the idea
#function title() {
#	#PROMPT_COMMAND="echo -e \"\033[0;$1 (on $HOSTNAME)\007\"";
#	echo -e \"\033[0;$1 (on $HOSTNAME)\007\"
#} title codex
#}}} ---------------------------------------------------------------------
