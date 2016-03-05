# dotfiles
Linux dotfiles

# Fresh Install Info

mkdir -p $HOME/Public
mkdir -p ~/Downloads/MyBackup

cd ~/Public
git clone https://github.com/julianobarbosa/dotfiles.git
cd dotfiles
for i in .*; do  echo $i; mv ~/$i ~/Downloads/MyBackup; ln -s ~/Public/dotfiles/$i ~/$i; done
mv /etc/editrc ~/Downloads/MyBackup
ln -s ~/Public/dotfiles/editrc /etc

# TMUX
# session management

tmux list-sessions
tmux new -s session-name
Ctrl-b d Detach from session
tmux attach -t [session name]
tmux kill-session -t session-name


Ctrl-a c Create new window
Ctrl-a d Detach current client
Ctrl-a l Move to previously selected window
Ctrl-a n Move to the next window
Ctrl-a p Move to the previous window
Ctrl-a & Kill the current window
Ctrl-a , Rename the current window
Ctrl-a q Show pane numbers (used to switch between panes)
Ctrl-a o Switch to the next pane
Ctrl-a ? List all keybindings


# moving between windows

Ctrl-a n (Move to the next window)
Ctrl-a p (Move to the previous window)
Ctrl-a l (Move to the previously selected window)
Ctrl-a w (List all windows / window numbers)
Ctrl-a window number (Move to the specified window number, the
default bindings are from 0 -- 9)

# Tiling commands

Ctrl-a % (Split the window vertically)
Ctrl-a : "split-window" (Split window horizontally)
Ctrl-a o (Goto next pane)
Ctrl-a q (Show pane numbers, when the numbers show up type the key
to goto that pane)
Ctrl-a { (Move the current pane left)
Ctrl-a } (Move the current pane right)


# Make a pane its own window

Ctrl-a : "break-pane"


# add to ~/.tmux.conf

bind | split-window -h
bind - split-window -v
