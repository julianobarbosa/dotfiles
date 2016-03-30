# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
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

alias ta='tmux attach -t $1'
alias tl='tmux list-session'
alias tn='tmux new -s $USER'
if [ -f /etc/bash_completion.d/tma ]; then
	. /etc/bash_completion.d/tma
fi
alias python=python3
alias manage='python $VIRTUAL_ENV/../manage.py'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
