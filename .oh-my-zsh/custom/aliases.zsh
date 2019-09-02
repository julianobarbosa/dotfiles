# -------------------------------------------------------------------
# NPM aliases
# -------------------------------------------------------------------
alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nt='npm test'
alias nit='npm install && npm test'
alias nk='npm link'
alias nr='npm run'
alias nf='npm cache clean && rm -rf node_modules && npm install'
alias nlg='npm list --global --depth=0'

# -------------------------------------------------------------------
# Git aliases
# -------------------------------------------------------------------
alias ga='git add -A'
alias gp='git push'
alias gpom='git push origin master'
alias gpog='git push origin gh-pages'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'
alias git_username='git config --global user.username'
alias git_name='git config --global user.name'
alias git_email='git config --global user.email'

# HISTORY
alias his="history"
alias clr="echo '' > ~/.zsh_history & exec $SHELL -l"

# EXIT
alias q='exit'
alias quit=q

# KILL
alias kill_port="fuser -n tcp -k $1"


