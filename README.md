# dotfiles
My Linux dotfiles

# VIM Download
https://tuxproject.de/projects/vim/

# vim-bootstrap
```console
curl 'http://vim-bootstrap.com/generate.vim' --data 'langs=perl&langs=go&langs=python&langs=javascript&langs=php&langs=html&langs=ruby&editor=vim' > ~/.vimrc
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
