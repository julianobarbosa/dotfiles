# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

eval `dircolors ~/.solarized/dircolors`

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

export PYTHONSTARTUP="$HOME/.pyrc"
export PYENV_ROOT="$HOME/.pyenv"
export PATH=.:$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# eval "$(pyenv root)/completions/pyenv.zsh"
# source "$PYENV_ROOT/completions/pyenv.zsh"

# pyenv virtualenvwrapper_lazy

plugins=(alias-tips colorize common-aliases command-not-found docker-compose django extract git github git-flow gitignore git-prompt git-remote-branch gnu-utils heroku history history-substring-search nmap tmux tmuxinator pip pyenv pylint python postgres rsync ubuntu vi-mode zsh-autosuggestions)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export HOSTALIASES=/etc/host.aliases
export JAVA_HOME=/usr/local/java/jdk1.8.0_20
export JRE_HOME=/usr/local/java/jre1.8.0_20
export PATH=$PATH:$JRE_HOME/bin:$JAVA_HOME/bin:/usr/local/go/bin

export WORKON_HOME=~/.ve
export PROJECT_HOME=~/__Projects/Envs

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
#else
  #export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
set -o nobeep
# set -o vi
set -o emacs

alias v='vim $1'
alias ta='tmux -2 attach -t'
alias tl='tmux -2 list-session'
alias tn='tmux -2 new -s $USER'
alias ts='tmux -2 new-session -s'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'
if [ -f /etc/bash_completion.d/tma ]; then
    . /etc/bash_completion.d/tma
fi
alias manage='python $VIRTUAL_ENV/../manage.py'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias diclean='docker images | grep '\''\'' | grep -P '\''[1234567890abcdef]{12}'\'' -o | xargs -L1 docker rmi'
# alias dclean='docker ps -a | grep -v '\'CONTAINER|_config|_data|_run'\'' | cut -c-12 | xargs docker rm'
#
# To reduce typing define some shell aliases
alias ys='yakuake_session'

### URL: https://github.com/pjfl/p5-yakuake-sessions
# Create some Yakuake sessions. Set each session to a different directory.
# Run some commands in some of the sessions like an HTTP web development
# server or tail -f on a log file. Set the tab titles for each session.
# Now create a profile called dev
#ys create dev

# Subsequently reload the dev profile
#ys load dev

# Show the contents of the dev profile
#ys show dev

# Edit the contents of the dev profile
#ys edit dev

# Delete the dev profile
#ys delete dev

# Command line help
#ys -? | -H | -h [sub-command] | list_methods | dump_self



export GOPATH=$HOME/__Projects/gocode
# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir
  custom_javascript 
  vcs
  newline
  status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Create a custom JavaScript prompt section
# POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
# POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
# POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

# Create a custom Python prompt section
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"

# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
#source ~/powerlevel9k/powerlevel9k.zsh-theme

bindkey -v
