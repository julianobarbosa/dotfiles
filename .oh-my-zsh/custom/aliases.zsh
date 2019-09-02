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

# nvim
alias e='nvim $1'
alias v='nvim $1'
alias vi='nvim $1'
alias vim='nvim $1'

# TMUX
alias ta='tmux -2 attach -t'
alias tl='tmux -2 list-session'
alias tn='tmux -2 new -s $USER'
alias ts='tmux -2 new-session -s'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Django
alias manage='python $VIRTUAL_ENV/../manage.py'

# oh-my-zsh
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Docker
alias diclean='docker images | grep '\''\'' | grep -P '\''[1234567890abcdef]{12}'\'' -o | xargs -L1 docker rmi'
alias dk="docker"
alias dkps="docker ps"
alias dki="docker inspect"
alias dkr="docker restart"
alias dkl="docker logs --tail=200 -f"
alias dkc="docker-compose"
alias dkcl="docker-compose logs --tail=200 -f"
alias dkcr="docker-compose restart"
alias dkm="docker-machine"
function dkb() { docker exec -it $1 script -q -c "TERM=xterm /bin/bash" /dev/null; }
function dkrb() { docker run --rm -it -v /tmp:/tmp/host ${1:-"ubuntu:18.04"} script -q -c "TERM=xterm /bin/bash" /dev/null; }
function dkjl() { journalctl -b CONTAINER_NAME=$1 -e ${@:2}; }
function dkip() { docker inspect $1 | jq -r .[0].NetworkSettings.IPAddress; }
function docker-clean() {
  docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
  docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
  docker volume rm $(docker volume ls -qf dangling=true 2>/dev/null) 2>/dev/null
}

## Kubernetes
alias kb="kubectl"

## Ansible
alias asb="ansible -s -i inventory -m shell -a"
alias asbp="ansible -s -i inventories/ -m shell -a"
alias apb="ansible-playbook -i inventory playbook.yml"
alias apbp="ansible-playbook -i inventories/ playbook.yml"
