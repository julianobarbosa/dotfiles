# Source global definitions

if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -f $HOME/.zshrc-cygwin-path.sh ]; then
        . $HOME/.zshrc-cygwin-path.sh
fi

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi

export EDITRC=/etc/editrc
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoreboth
export HISTSIZE=999999

#Python 2.7 
export VIRTUALENVWRAPPER_PYTHON=`which python`
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=~/_Projects

# . /usr/bin/virtualenvwrapper.sh

set -o vi

alias v='nvim $1'
alias vi='nvim $1'
alias vim='vim $1'
alias ta='tmux attach -t $1'
alias tl='tmux list-session'
alias tn='tmux new -s $USER'
alias python=python3
alias manage='python $VIRTUAL_ENV/../manage.py'

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '

alias start-script="wget -q -nv -O -  http://gist.github.com/raw/863014/script-skeleton.py | vim - -c 'set filetype=python'"

if [ -f /etc/bash_completion.d/tma ]; then
	. /etc/bash_completion.d/tma
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# enable history verification:
# bang commands (!, !!, !?) will print to shell and not be auto executed
# http://superuser.com/a/7416
shopt -s histverify

# print previous command but only the first nth arguments
# Alt+1, Alt+2, ...etc
bind '"\e1": "!:0 \n"'
bind '"\e2": "!:0-1 \n"'
bind '"\e3": "!:0-2 \n"'
bind '"\e4": "!:0-3 \n"'
bind '"\e5": "!:0-4 \n"'

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
