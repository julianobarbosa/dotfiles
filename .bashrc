# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
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

alias v='vim $1'
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
