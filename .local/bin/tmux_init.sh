#/usr/bin/zsh
tmux attach -t base || tmux new -c '$HOME' -s base -n EDITOR

# Select pane 1, set dir to api, run vim
tmux selectp -t 1
tmux send-keys "cd $HOME" C-m
tmux send-keys "nvim" C-m

# Split panel 1, set dir to Project
tmux splitw -h -p 50 -c '$HOME/__Project/Envs'
tmux rename-windows SERVER
tmux send-keys 'cd $HOME/__Projects/Env' C-m
tmux splitw -v -p 75 -c '$HOME/__Project/Envs'
tmux rename-windows SHELL

# create a new window called DOCKER
tmux new-window -c '$HOME' -t $session:5 -n CHAT
tmux send-keys "/usr/bin/weechat" C-m

