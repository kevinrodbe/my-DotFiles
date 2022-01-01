# Path to your oh-my-zsh installation.
export ZSH=/home/myUser/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# old theme: robbyrussell
ZSH_THEME="kevinrodbe"

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
plugins=(
    git
    git-extras
    npm
    docker
    docker-compose
    docker-machine
    nvm
    yarn
    wd
    zsh-autosuggestions
)

# User configuration

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
        # tmux split-window -v
        # tmux split-window -t 2 -h
        # tmux send-keys -t 1 'p && clear' C-j
        # tmux send-keys -t 2 'p && clear' C-m
        # tmux send-keys -t 3 'p && clear' enter
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# source $(brew --prefix nvm)/nvm.sh

# Create a JAVA_HOME variable, determined dynamically
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

# Add that to the global PATH variable
export PATH=${JAVA_HOME}/bin:$PATH

# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools

# fix error de: invalid us-ascii character '\xC3'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

eval "$(gulp --completion=zsh)"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(dirname $(gem which colorls))/tab_complete.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.enhancd/init.sh

export EDITOR="subl"

# FZF  config overwrite
# export FZF_DEFAULT_COMMAND="rg --files -i --preview 'git show {+1}'"
# export FZF_DEFAULT_COMMAND="rg --files -i"
RG_OPTIONS="-i --column"
export FZF_DEFAULT_OPTS="--reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"
# use git ls-files inside git repo, otherwise rg
export FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard | rg --files $RG_OPTIONS"

# export FZF_ALT_C_COMMAND="rg "

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# TODO: exec from FZF_DEFAULT_COMMAND
_fzf_compgen_path() {
    git ls-files --cached --others --exclude-standard | rg --files $RG_OPTIONS . "$1"
}

_fzf_compgen_dir() {
    git ls-files --cached --others --exclude-standard | rg --files $RG_OPTIONS . "$1"
}

# ENHANCD
export ENHANCD_COMPLETION_BEHAVIOR="list"
export ENHANCD_DISABLE_DOT=0
export ENHANCD_DISABLE_HOME=0

# RIPGREP
export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

### MY ALIASES
source $HOME/.aliases.sh
