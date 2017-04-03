# Path to your oh-my-zsh installation.
export ZSH=/home/myUser/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# old theme: robbyrussell
ZSH_THEME="garyblessington"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras npm)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#run tmux by default
if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session -s 1-main -d
        tmux split-window -v
        tmux split-window -t 2 -h
        tmux send-keys -t 1 'p && clear' C-j
        tmux send-keys -t 2 'p && clear' C-m
        tmux send-keys -t 3 'p && clear' enter
        tmux select-pane -t 1
		tmux attach -t 1-main
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi

# ZSH standalone npm install autocompletion {
_npm_install_completion() {
    local si=$IFS

    # if 'install' or 'i ' is one of the subcommands, then...
    if [[ ${words} =~ 'install' ]] || [[ ${words} =~ 'i ' ]]; then

        # add the result of `ls ~/.npm` (npm cache) as completion options
        compadd -- $(COMP_CWORD=$((CURRENT-1)) \
            COMP_LINE=$BUFFER \
            COMP_POINT=0 \
            ls ~/.npm -- "${words[@]}" \
            2>/dev/null)
    fi

    IFS=$si
}

compdef _npm_install_completion 'npm'
# }

# my-alias
alias bye="exit"
alias rm='rm -i'
alias g="git"
alias p="cd ~/proyectos/"
alias c="cd ~/proyectos/cursos-lab/"
alias t="cd ~/proyectos/test/"
alias aku="cd ~/proyectos/myProy/wp-content/themes/boilerplate"
alias gu="gulp"

# because eslint is installed locally. Now we can use slint --init ó slint myfile.js
alias slint="./node_modules/.bin/eslint"

# Easier navigation:
alias ..="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias --="cd -"

# npm
alias npmt="npm test"
alias npms="npm start"
alias npmr="npm run "
alias npmi="npm install"
alias npmis="npm install -S"
alias npmid="npm install -D"
alias npmig="npm install -g"

#tmux
alias klt="tmux kill-session"

# Open directory or program
alias gc="google-chrome"
alias ff="firefox"
alias go="nautilus"

# compile js con rhino
alias rhino="node r.js -o build.js"

# APT Update
alias u13="sudo apt-get update"
alias u23="sudo apt-get upgrade"
alias u33="sudo apt-get dist-upgrade"

alias apti="sudo apt-get install"

# APT clean
alias aptac="sudo apt-get autoclean"
alias aptc="sudo apt-get clean"
alias aptar="sudo apt-get autoremove"

# Clean Cache
alias free14="sync; echo 1 > /proc/sys/vm/drop_caches"
alias free24="sync; echo 2 > /proc/sys/vm/drop_caches"
alias free34="sync; echo 3 > /proc/sys/vm/drop_caches "
alias free44="swapoff -a && swapon -a"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
