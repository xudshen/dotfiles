# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
# jboss path
export JBOSS_HOME=/usr/local/opt/jboss-as/libexec
export PATH=${PATH}:${JBOSS_HOME}/bin
# go path
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=${HOME}/Workspace/go
export PATH=$PATH:${GOROOT}/bin

launchctl setenv GOROOT /usr/local/opt/go/libexec
launchctl setenv GOPATH ${HOME}/Workspace/go
# android studio path
export ANDROID=/Users/xudshen/.androidsdk
export PATH=$PATH:$ANDROID/platform-tools
# node.js path
export NODE_PATH=/usr/local/lib/node_modules
export JAVA_HOME=$(/usr/libexec/java_home)
# user email
export USER_EMAIL=xudshen@hotmail.com
launchctl setenv USER_EMAIL xudshen@hotmail.com

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias cls='clear'
alias ll='ls -l'
alias la='ls -al'
alias vi='vim'
alias grep="grep --color=auto"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s rar='unrar x'
alias -s 7z='7z x'

alias tree='tree -N'
alias hgrep='history | grep'
alias lgrep='ls -al | grep'
# gitignore
# function gi() { curl http://www.gitignore.io/api/$@ ;}

# perl with cpan
alias tsung_stat='/usr/local/Cellar/tsung/1.5.1/lib/tsung/bin/tsung_stats.pl'
PERL_MB_OPT="--install_base \"/Users/xudshen/.perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/xudshen/.perl5"; export PERL_MM_OPT;
export PERL5LIB=/Users/xudshen/.perl5/lib/perl5:/Users/xudshen/.perl5/lib/perl5/darwin-thread-multi-2level
# this should be in /Users/xudshen/.cpan/CPAN/MyConfig.pm
# 'makepl_arg' => q[INSTALL_BASE=/User/xudshen/.perl5],
# 'mbuildpl_arg' => q[--install_base=/User/xudshen/.perl5],
alias oconnect="sudo ~/.ssh/openconnect.sh"
