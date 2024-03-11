#!/bin/bash
tmux new-session -d -s main;
tmux split-window -h; # the flag -h split horizontally Right-Left
tmux select-pane -L;
tmux send-keys -t main 'ls' C-m
tmux select-pane -R
tmux send-keys -t main 'top' C-m
tmux attach-session -d -t main


# without flag or with -v will split vertically!! up and dowon
# tmux split-window 
# tmux split-window -v

# tmux select-pane -U;
# tmux select-pane -D;

# tmux send-keys -t session_name 'your_command' C-m
