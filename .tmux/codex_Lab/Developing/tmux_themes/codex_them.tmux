# -- color palette  -- Mocha
# Rosewater #f5e0dc
# Falmingo  #f2cdcd
# pink      #f5c2e7
# Mauve     #cba6f7
# rad       #f38ba8
# maroon    #eba0ac
# Peach     #fab387
# yellow    #f9e2af
# green     #a6e3a1
# tael      #94e2d5
# sky       #89dceb
# Sapphire  #74c7ec
# blue      #89b4fa
# Labender  #b4befe
# Text      #cdd6f4
# grey      #313244
# Base      #1e1e2e
# Mantle    #181825
# Crust     #11111b

# --  Variable name          Alias    Replaced with
#     window_flags           #F       Window status flags '*' -- don't use it, it causes troubles
#     window_index           #I       Index of window
#     window_name            #W       Name of window
#     session_name           #S       Name of session
#     pane_path              #T       Path of pane (can be set by application)
#     pane_title             #T       Title of pane (can be set by application)
#     pane_index             #P       Index of pane
#     pane_id                #D       Unique pane ID
#     host                   #H       Hostname of local host
#     host_short             #h       Hostname of local host (no domain name)
#     window_zoomed_flag              1 if window is zoomed
# Example:
# format "#[fg/bg]#I<ndex>#[f/b]:#[f/b]#W<indow>#[f/b]#F(the status *)" #[bg=#11111b]#[fg=#fab387]

# we can put icons in vars like bash  "        █    ( )"

# -- TODO:
# NOTE: you have marked 'FORMAT' with 'a in {man tmux}
# break each format inot pieces in variables.
# add - host name - and write some usefull plugins.
# find out how to minuplate with variables in tmux,
# and call them in different files like other plugin do.
# find out how tmux plugin (tmp) system works.
# and keep inhancing this plugin (>^.^<) and keep using vim.

# -- see in > man tmux / window-status , and / status-right . And look around them carefully.
# -- see also / window_bigger

# -- coloring the clock
set-option -g clock-mode-colour cyan

# PANES COLOR:
# -- for inactive panes
set -g pane-border-style "fg=#5152a4" # #bbbbbb
# -- for active panes
set -g  pane-active-border-style "fg=#a0ef00"    #   #eaa387

#-------------- CUSTOM STATUS BAR -----------------#
#                    "   █    ( )"

# -- if it possable seperate formatting and styling in groups (for organization)

# set the position of the window list.
set -g status-justify centre # [left | centre | right ]

# -- set stauts right length
set -g status-right-length 60

# -- the entire status color
set -g status-style "bg=#11111b fg=#ff5800" #
seperate="#[fg=#11111b]█"
#date_time="#[bg=#89b4fa]#[fg=#11111b]   #[bg=#212234]#[fg=#cdd6f4] #(date +'%A %d %B %H:%M' 2>/dev/null)"
date_time="#[bg=#cba6f7]#[fg=#11111b]   #[bg=#212234]#[fg=#cdd6f4] %H:%M %A %d %B"
# -- Right-Status
set -g status-right-style  "bold"
set -g status-right  "#[bg=#f5c2e7]#[fg=#11111b]  #[bg=#212234]#[fg=#ff5800] #{pane_index} #[fg=#cdd6f4]of #{window_panes} #[fg=#a6e3a1] ${seperate}${date_time}${seperate}"

# -- CURRENT/ACTIVE window
setw -g window-status-current-style "bold"
setw -g window-status-current-format "#[fg=#cdd6f4] #W #[fg=#11111b]#[bg=#fab387] #I #{?window_zoomed_flag,( ),}#{?pane_marked, ,} "

# -- INACTIVE WINDOWS
setw -g window-status-format "#[fg=#cdd6f4]#[bg=#313244] #W #[fg=#11111b]#[bg=#89b4fa] #I #{?window_zoomed_flag, ,}#{?pane_marked,,} "

# -- Left-Status
set -g status-left "bold"
set -g status-left "#[fg=#11111b]█#[bg=#212234]#[fg=#cdd6f4] #S #{?client_prefix,#[bg=#f38ba8]#[fg=#000000],#[bg=#a6e3a1]#[fg=#000000]}  #[fg=#11111b]█"

# COLORING MESSAGE STATUS
set -g message-style "fg=#f9e2af bg=#181825 bold" # " #5f73dd
