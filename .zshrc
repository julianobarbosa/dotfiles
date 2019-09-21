# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME=powerlevel10k/powerlevel10k

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

plugins=(alias-tips colorize common-aliases command-not-found docker-compose django extract git github git-flow gitignore git-prompt git-remote-branch gnu-utils jsontools heroku history history-substring-search nmap tmux tmuxinator pip pyenv pylint python postgres rsync ubuntu sudo vi-mode zsh-autosuggestions zsh-syntax-highlighting)

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
#  export EDITOR='vim'
#else
  export EDITOR='nvim'
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
set -o vi
# set -o emacs

if [ -f /etc/bash_completion.d/tma ]; then
    . /etc/bash_completion.d/tma
fi
#
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
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  #vi_mode
  #time
  #dir
  #newline
  #pyenv
  #vcs
  #status
  #newline
#)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"

#POWERLEVEL9K_VI_INSERT_MODE_STRING="-- INSERT --"
#POWERLEVEL9K_VI_COMMAND_MODE_STRING="-- NORMAL --"

# Create a custom JavaScript prompt section
# POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
# POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
# POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

# Create a custom Python prompt section
#POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
#POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
#POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"

# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
#source ~/powerlevel9k/powerlevel9k.zsh-theme
#
bindkey -v

# Windows XSrv config
export $(dbus-launch)
export LIBGL_ALWAYS_INDIRECT=1

export WSL_VERSION=$(wsl.exe -l -v | grep -a '[*]' | sed 's/[^0-9]*//g')
export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
export DISPLAY=$WSL_HOST:0

source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
