################
##    XBPS    ##
################
alias i'sudo xbps-install -S'
alias u='i; sudo xbps-install -u xbps; sudo xbps-install -u'
alias q='sudo xbps-query -Rs'
alias r='sudo xbps-remove -R'

##################
## Git Commands ##
##################
alias graph='git log --oneline --decorate --graph --all'
alias graphl='git log --decorate --graph --all'

##########
##  Vi  ##
##########
alias vi='vim -c "color desert"'

#####################
## System Commands ##
#####################
alias chmod='chmod -c'
alias c='clear' # -- specially when using tmux
alias cat='batcat --italic-text=always --pager "less -FX"'
alias cp='cp -uv'
# -- (e)grep
alias grep='egrep -i --color=auto'
# -- exa -- see --help
alias ls='exa --color=always --icons --git'
alias l='ls -l'
alias ll='ls -la'
# -- exa does tree
alias lt='ls -a --tree --level=2'
alias llt='ls -al --tree --level=2'
# -- or just use lsd, if you now how to change the user/group colors, lsd good in icons
#alias ls='lsd'
#alias l='lsd --long --git --header --blocks=permission,size,date,git,name'
#alias ll='l -A'
# -- lsd tree version
#alias lt='lsd --tree --depth=2'
#alias llt='ll --tree --depth=2'
###################
##  Web Browser  ##
###################
xfire(){
    firefox.exe --new-tab file://///$(pwd)/$1
    #
    # it should be improved frist vsit [https://www.geeksforgeeks.org/how-to-launch-firefox-from-linux-terminal/]
    # this function should be a sparate compuct program in ~/.bin
    # TODO:
    # by using switches add more functionality to it:-
    # like open in new-tab new-window ,etc.
    # complish this task when migration complitly to linux "windows just SUCKS and GARBAGE"
}
export -f xfire
