# -- coloring the clock
set-option -g clock-mode-colour cyan

# set the position of the window list.
set -g status-justify centre # [left | centre | right ]

# PANE BORDERS COLOR:
# -- for inactive panes
set -g pane-border-style "fg=#5152a4"
# -- for active panes
set -g  pane-active-border-style "fg=#a0ef00"

# -- set stauts right length
set -g status-right-length 60

# -- the entire status color
set -g status-style "bg=#11111b fg=#ff5800"

seperate="#[fg=#11111b]█"
#date_time="#[bg=#89b4fa]#[fg=#11111b]   #[bg=#212234]#[fg=#cdd6f4] #(date +'%H:%M %A %d %B' 2>/dev/null) "
date_time="#[bg=#cba6f7]#[fg=#11111b] Time #[bg=#212234]#[fg=#cdd6f4] %H:%M %A %d %B"

# -- Right-Status
set -g status-right-style  "bold"
set -g status-right  " #[bg=#f5c2e7]#[fg=#11111b]  #[bg=#212234]#[fg=#ff5800] #{pane_index} #[fg=#cdd6f4]of #{window_panes} #[fg=#a6e3a1] ${seperate}${date_time} ${seperate}"

# -- CURRENT/ACTIVE window
setw -g window-status-current-style "italics bold"
setw -g window-status-current-format "#[fg=#cdd6f4] #W #[fg=#11111b]#[bg=#fab387] #I #{?window_zoomed_flag,( ),}#{?pane_marked, ,} "

# -- INACTIVE WINDOWS
setw -g window-status-format "#[fg=#cdd6f4]#[bg=#313244] #W #[fg=#11111b]#[bg=#89b4fa] #I #{?window_zoomed_flag, ,}#{?pane_marked, ,}"

# -- Left-Status
set -g status-left "bold"
set -g status-left "#[fg=#11111b]█#[bg=#212234]#[fg=#cdd6f4] #S #{?client_prefix,#[bg=#f38ba8]#[fg=#000000],#[bg=#a6e3a1]#[fg=#000000]}  #[fg=#11111b]█"

# COLORING MESSAGE STATUS
set -g message-style "fg=#f9e2af bg=#181825 bold"
