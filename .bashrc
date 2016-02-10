export EDITRC=/etc/editrc
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim
export HISTCONTROL=ignoreboth
export HISTSIZE=999999

set -o vi

alias python=python3
alias manage='python $VIRTUAL_ENV/../manage.py'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
