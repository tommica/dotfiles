set -g default-terminal "screen-256color"
set -g history-limit 1000
 
 
# THEME
set -g status-bg black
set -g status-fg white
set -g status-interval 60
set -g status-left-length 30
set -g status-left '#[fg=green](#S) #(whoami)@#H#[default]'
set -g status-right '#[fg=yellow]#(cut -d " " -f 1-3 /proc/loadavg)#[default] #[fg=blue]%H:%M#[default]'
 
# set correct term
set -g default-terminal screen-256color
