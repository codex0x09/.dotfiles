####################
## Vim ** Confing ##
####################
#
alias nv='nvim ~/.config/'
alias ide='IDE'
alias v='vim ~/.config/'

alias vi='vim -c "color default|\
    hi! Normal ctermfg=255|\
    hi! Visual cterm=none ctermbg=202 ctermfg=232|\
    hi! link Search Visual|\
    hi! CursorLineNr cterm=none|\
    hi! CursorLine cterm=none ctermbg=233"'
#
###########
## Tmux  ##
###########
#
#alias ide='tmux new -s "IDE" nvim'
#
#################
## Server-Side ##
#################
#
alias fire='powershell.exe -c "explorer $1"'
alias music='powershell.exe -c PotPlayerMini64'
#
#################
## phpMyServer ##
#################
#
alias mysql='mysql.exe'
alias xampp='xampp-control.exe'
#
##################
## Git Commands ##
##################
#
alias graph='git log --oneline --decorate --graph --all '
alias graphl='git log --decorate --graph --all '
#
#####################
## System Commands ##
#####################
alias megaman='echo -e "-*- \e[1;31mMegaman\e[0m -*- is: \e[01;32m$USER\e[01;34m@\e[01;32m$HOSTNAME"'

alias synchome='sudo cp -rfuv /home/ /mnt/e/_BackUps/Debian_Home.bac'
#sleep 1 && echo -e "\n\n\n\t-*- \e[1;2;4;31mDone\e[00m -*-"'

#
alias cat='batcat'
alias cp='cp -uv'
alias grep='grep -i --color=auto'
alias l='ls -l --sort=version'
alias ll='ls -la --color=auto --sort=version'
alias ls='ls -h --color=auto --sort=version'
alias lx='ls -X'
alias rm='rm -I'
alias search='whereis'
#alias mv='mv -i '
#alias l='ls -CF'

#############
### Alias ###
#############

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    alias ll='ls -la --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias diff='diff --color=auto'

    #alias grep='grep --color=auto' # see ~/.bash_aliases
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#
