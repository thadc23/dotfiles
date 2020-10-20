# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tcraft/.oh-my-zsh"

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
plugins=(git docker zsh-completions brew kubectl npm)

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

PROMPT=$PROMPT'$(kube_ps1)'"\n"

fpath=(/usr/local/share/zsh-completions $fpath)
. /usr/local/etc/bash_completion.d/cf-cli
. /usr/local/etc/bash_completion.d/bosh-cli
. /usr/local/etc/bash_completion.d/kubectx
. /usr/local/etc/bash_completion.d/kubens

export proj='/Users/tcraft/dev/projects'
export GOPATH="$proj/go-workspace"
export GOBIN="$GOPATH/bin"
alias ll='ls -latr'
alias vault-ui='/Users/tcraft/scripts/vault.sh'
alias python='/usr/bin/python'
alias espp='/Users/tcraft/scripts/espp.sh'
alias vote='/Users/tcraft/scripts/vote.sh'
alias fixsound='sudo killall coreaudiod'
alias kc='kubectl'
alias kns='kubens'
alias kctx='kubectx'
#export ORIGINAL=$LSCOLORS
#export CLICOLOR=1
#export LSCOLORS=gxfxcxdxbxegedabagacad
export PATH=$PATH:$GOBIN:/usr/local/sbin/:/usr/local/lib/node_modules
eval "$(direnv hook $SHELL)"
POWERLEVEL9K_DIR_PATH_ABSOLUTE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs kubecontext)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_KUBECONTEXT_BACKGROUND="aqua"
POWERLEVEL9K_MODE='awesome-patched'
autoload -U compinit && compinit
clear

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc
eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export GOPRIVATE=github.com/pivotal/*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tcraft/.sdkman"
[[ -s "/Users/tcraft/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tcraft/.sdkman/bin/sdkman-init.sh"
