#/usr/bin/zsh
tmux attach -t base || tmux new -c '$HOME' -s base -n EDITOR

# Select pane 1, set dir to api, run vim
tmux selectp -t 1
tmux send-keys "cd $HOME" C-m
tmux send-keys "nvim" C-m

# create a new window called DOCKER
tmux new-window -c '$HOME' -t $session:5 -n CHAT
tmux send-keys "/usr/bin/weechat" C-m

