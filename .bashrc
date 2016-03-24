export EDITRC=/etc/editrc
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoreboth
export HISTSIZE=999999

set -o vi

alias ta='tmux attach -t $1'
alias tl='tmux list-session'
alias tn='tmux new -s $USER'
alias python=python3
alias manage='python $VIRTUAL_ENV/../manage.py'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
