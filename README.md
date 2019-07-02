# dotfiles
My Linux dotfiles

# VIM Download
https://tuxproject.de/projects/vim/

# vim-bootstrap
```console
curl 'http://vim-bootstrap.com/generate.vim' --data 'langs=perl&langs=go&langs=python&langs=javascript&langs=php&langs=html&langs=ruby&editor=vim' > ~/.vimrc
wget -c https://raw.githubusercontent.com/julianobarbosa/dotfiles/master/.vimrc.local
vim +PlugInstall +qall
```

# oh-my-zsh
```console
apt install zsh
chsh -s $(which zsh)
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
# For Windows
#    Open Visual Studio
#    Go to Tools -> Get Tools and Features
#    In the "Workloads" tab enable "Desktop development with C++"
#    Click Modify at the bottom right
#
#  python-devel python3-devel
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

# Solarized
```console
mkdir -p ~/.solarized
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
# git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
```

# TMUX Plugin Install

```console
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

```

(Source Code Pro)[https://fonts.google.com/specimen/Source+Code+Pro]

# reference
[WSL2](https://dev.to/nickymeuleman/wsl2-zsh-and-docker-linux-through-windows-4e4m)
