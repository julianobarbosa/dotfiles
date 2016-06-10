# dotfiles
My Linux dotfiles

# VIM Download
https://tuxproject.de/projects/vim/

# spf13-vim
```console
cd
curl http://j.mp/spf13-vim3 -L -o - | sh
```

# oh-my-zsh
```console
cd
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm -rf ~/.zshrc
```

# dotfiles Install Info

```console
if [ -d ~/Public ]
then
    mkdir ~/Public
fi

if [ -d ~/Downloads/MyBackup ]
then
  mkdir -p ~/Downloads/MyBackup
fi

cd ~/Public
git clone https://github.com/julianobarbosa/dotfiles.git
cd dotfiles
for i in .*; do  echo $i; mv ~/$i ~/Downloads/MyBackup; ln -s ~/Public/dotfiles/$i ~/$i; done
mv /etc/editrc ~/Downloads/MyBackup
ln -s ~/Public/dotfiles/editrc /etc

mv /etc/bash_completion.d/tma ~/Downloads/MyBackup
ln -s ~/Public/dotfiles/tma /etc/bash_completion.d
# Open vim then call :PluginInstall
# For YoucompleteMe plugin you needed install
#  automake gcc gcc-c++ kernel-devel cmake
#  python-devel python3-devel
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
# TMUX Plugin Install

```console
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

# TMUX
# session management

tmux list-sessions
tmux new -s session-name
Ctrl-a d Detach from session
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

# Copy from windows clipboard to putty
shitft+mouse left click
shitt+INS
