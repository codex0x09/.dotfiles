```bash
#############   Git   ################

# using array version to Boost the speed
git_state() {
    #$(git ls-files --other --directories --exclude-standard ) -> list untracked files, without list dirs content.
    #$(git ls-files --other --exclude-standard ) -> list all untracked files.
    # please see man git ls-files.
    #TODO: git ls-files, after tow level depth doesn't show the previous and starts new cycle, why is that??!
    #The Ans: $(git rev-parse --show-toplevel) it returns the git root dir location, if this not exisit then ls-files will fail 
    # under tow level, which when you cd */*/, you'll lose $untracked functionality.
    local untracked=$(git ls-files --other --directory --exclude-standard $(git rev-parse --show-toplevel) 2> /dev/null)
    [[ -n ${untracked} ]] && untracked="\[\033[1;3;31m\]*\[\033[00m\]"


    # is there any file staged(cached) ?!
    # please see man git diff
    local staged=$(git diff --staged --name-only 2> /dev/null)
    [[ -n ${staged} ]] && staged="\[\033[1;3;33m\]!\[\033[00m\]"

    # remote name
    local remote_name=$(git remote --no-verbose 2> /dev/null)
    [ -z $remote_name ] && printf "\[\033[3;36m\]\[\033[00m\] ${untracked}${staged}" && return

    # instead of recreating branch var, use that comes from 'git_prompt' as argument branch="$1".
    # branch="$(git symbolic-ref --short HEAD 2> /dev/null)"
    local branch="$1"

    # local's commits ahead/behind remote, let it to be an array for more efficiency.
    local local_status=($(git rev-list --count --left-right $remote_name/$branch...HEAD 2> /dev/null))

    # what $cps stands for ?! Is commit_prompt_status \_('.')_/ forgetness?! I just name it 'cps'  :)  
    local cps=""
    if [[ -n ${local_status[*]} ]]
    then
        if (( ${local_status[0]} == 0 && ${local_status[1]} != 0 ))
        then
            cps="\[\033[1;3;32m\] ${local_status[1]}\[\033[00m\]"
        elif (( ${local_status[0]} == 0 && ${local_status[1]} == 0 ))
        then
            cps="\[\033[3;36m\]\[\033[00m\]"
        elif (( ${local_status[0]} != 0 && ${local_status[1]} == 0 ))
        then
            cps="\[\033[1;3;31m\]${local_status[0]} \[\033[00m\]"
        else
            cps="\[\033[1;38;5;208m\]${local_status[0]}  ${local_status[1]}\[\033[00m\]"
        fi
        printf "${cps} ${untracked}${staged}"
    fi
    return
}

git_prompt()
{
    local branch="$(git symbolic-ref --short HEAD 2> /dev/null)"
    local branch_truncated="${branch:0:30}"
    if (( ${#branch} > ${#branch_truncated} )); then
        branch="${branch_truncated}..."
    fi
    [ -n "${branch}" ] && printf "\[\033[1;2;91m\]:(${branch})\[\033[00m\]$(git_state $branch)"
}

ownership(){
    if [[ "$(stat --format "%G" .)" == "$(printf $USER)" ]]
    then
        printf "\[\033[1;36m\]\[\033[00m\]"
    else
        printf "\[\033[1;31m\]\[\033[00m\]"
    fi
}

diagnostic(){
    local last_state=$?
    case $last_state in
        0) printf "\[\033[32m\]\[\033[90m\](\[\033[00m\]\[\033[38;5;208m\]$last_state\[\033[90m\])\[\033[00m\]" ;;
        1) printf "\[\033[31m\]\[\033[90m\](\[\033[00m\]\[\033[38;5;208m\]$last_state\[\033[90m\])\[\033[00m\]" ;;
        *) printf "\[\033[38;5;208m\]\[\033[90m\](\[\033[38;5;208m\]$last_state\[\033[90m\])\[\033[00m\]" ;;
    esac
}
print_dir(){
    printf "\[\033[01;3;34m\]\W\[\033[m\]"
}
end(){
    printf " \[\033[1;91m\]\[\033[m\] "
    #printf " \[\033[1;91m\] \[\033[m\]"
    #printf " \[\033[1;97m\]\[\033[m\] "
    #printf " \[\033[1;37m\]»\[\033[m\] "
}

#it works well!!
codexPs(){
    PS1="$(diagnostic) "
    PS1+="$(ownership) "
    PS1+="$(print_dir)"
    PS1+="$(git_prompt)" # Increase the speed
    PS1+="$(end)"
}
PROMPT_COMMAND=codexPs  #the PS1
##############################################################


######################################
##    Command Line Interface        ##
######################################
# -- Vi Mode

# Enable Vi Mode
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

# Sourcing aliases file
[[ -f ~/.aliases ]] && source ~/.aliases || [[ -f ~/.debian ]] && source ~/.debian

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
```