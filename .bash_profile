# a.is bash running ?     b.is ~/.bashrc exists?    c.then fire it.
[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

# add private .bin to PATH
[ -d "$HOME/.bin" ] && PATH="$HOME/.bin:$PATH"


##################################################
# -- Coloring GCC & LESS and set less'Options -- #
##################################################

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
export LESS_TERMCAP_so=$'\E[1;6;38;5;232;48;5;166m' # Status bar and hlsearch #
export LESS_TERMCAP_se=$'\E[0m'                    # reset reverse video     #
export LESS_TERMCAP_us=$'\E[1;91m'                 # begin underline         #
export LESS_TERMCAP_ue=$'\E[0m'                    # reset underline         #
##############################################################################

###########################################
#               Sourcing                  #
###########################################

# Enable Completion.
[[ -f /etc/profile.d/bash_completion.sh ]] && source /etc/profile.d/bash_completion.sh
###########################################
