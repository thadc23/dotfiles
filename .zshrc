# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tkma4aq/.oh-my-zsh"
export no_proxy=localhost,127.0.0.1
export NO_PROXY=$no_proxy


PROXY=
alias proxy-on="export HTTP_PROXY=http://$PROXY; export HTTPS_PROXY=http://$PROXY; export http_proxy=http://$PROXY; export https_proxy=http://$PROXY"
alias proxy-off="export HTTP_PROXY=; HTTPS_PROXY=; export http_proxy=; export https_proxy=;"
proxy-on
nc -z $PROXY &>/dev/null || proxy-off

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker zsh-completions brew kubectl npm oc)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

fpath=(/usr/local/share/zsh-completions $fpath)
. /usr/local/etc/bash_completion.d/cf7-cli
. /usr/local/etc/bash_completion.d/bosh-cli
. /usr/local/etc/bash_completion.d/kubectx
. /usr/local/etc/bash_completion.d/kubens

export proj='/Users/tkma4aq/dev/projects'
export GOPATH="$proj/go-workspace"
export GOBIN="$GOPATH/bin"
alias ll='ls -latr'
alias vault-ui='/Users/tkma4aq/scripts/vault.sh'
alias python='/usr/bin/python'
alias espp='/Users/tkma4aq/scripts/espp.sh'
alias vote='/Users/tkma4aq/scripts/vote.sh'
alias fixsound='sudo killall coreaudiod'
alias kc='kubectl'
alias kns='kubens'
alias kctx='kubectx'
alias id="id tkma4aq | sed -n 1'p' | tr ',' '\n'"
alias groups="groups | tr ' ' '\n'"
export PATH=$PATH:$GOBIN:/usr/local/sbin/:/usr/local/lib/node_modules
eval "$(direnv hook $SHELL)"
autoload -U compinit && compinit
clear
source ~/.p10k.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc
eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

complete -o nospace -C /usr/local/bin/odo odo

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tkma4aq/.sdkman"
[[ -s "/Users/tkma4aq/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tkma4aq/.sdkman/bin/sdkman-init.sh"
