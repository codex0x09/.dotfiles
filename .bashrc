######################################
##    Building Prompt & Coloring    ##
######################################

# Git
git_prompt()
{
	local branch="$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3)"
	local branch_truncated="${branch:0:30}"
	if (( ${#branch} > ${#branch_truncated} )); then
		branch="${branch_truncated}..."
	fi
	[ -n "${branch}" ] && printf "\[\033[1;2;91m\]:(${branch})\[\033[00m\]"
}

#TODO: see Bash wiki (arch wiki very helpful) , search in the page for 'Right-justified text'
# see also in bash wiki the stackoverflow I guess what I'm looking for is live there ;)
# I've turned every thing into function, but bash can't Calc string length </3
# if I use \[---\] length will be ignore cool, but it works only in ps1 itself not in function and this is the issue

# PS1
arrow(){
	printf "\[\033[01;31m\]\[\033[00m\]"
}

diagnostic(){
	local last_state=$?
	case $last_state in
		0) printf "\[\033[32m\] \[\033[00m\][\[\033[00m\]\[\033[38;5;214m\]\[\033[3m\]$last_state\[\033[00m\]]" ;;
		1) printf "\[\033[31m\] \[\033[00m\][\[\033[00m\]\[\033[38;5;214m\]\[\033[3m\]$last_state\[\033[00m\]]" ;;
		*) printf "\[\033[38;5;208m\] \[\033[00m\][\[\033[38;5;214m\]\[\033[3m\]$last_state\[\033[00m\]]";;
	esac
}
print_dir(){
	printf "\[\033[01;3;34m\]\W\[\033[m\]"
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
###############################################################################################

# -- Coloring GCC & LESS and set less'Options

# coloring GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# -- set less variable
export LESS="-g -i -J -M -s -w -z-4 --raw-control-chars --tabs=2 --incsearch --status-line"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

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

###############################################################################################

######################################
##    Command Line Interface        ##
######################################
# -- Vi Mode

# Enable Vi Mode in Interactive Shell
set -o vi

# Mappings ==> (see) $ help bind

# map 'jk' to 'ESC'
bind '"jk":"\e"'

# map <C-l> to clear screen
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

EDITOR=vi
###########################################
# -- Sourcing

# Add Codex's .bin to Path.
export PATH="$HOME/.bin:$PATH"

# Alias definitions.
source ~/.bash_aliases

# Enable Completion.
source /etc/profile.d/bash_completion.sh
###########################################
# -- Shell [Bash] Options

# chang dir without 'cd'.
shopt -s autocd

# Auto-correction the minor error in the dir name,
# it works, Only when using 'cd'.
shopt -s cdspell

# If set, the pattern "**" used in a pathname expansion context will,
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# append to the history file, don't overwrite it.
shopt -s histappend

# history file size
HISTFILESIZE=500

# the number of commands to remeber in the command hitory.
HISTSIZE=500

# don't save duplicate lines or lines starting with space.
export HISTCONTROL=ignoreboth:erasedups
