# my-alias
alias bye="exit"
alias rm='rm -i'
alias g="git"
alias p="cd ~/proyectos/"
alias c="cd ~/proyectos/cursos-lab/"
alias te="cd ~/proyectos/test/"
alias aku="cd ~/proyectos/myProy/wp-content/themes/boilerplate"
alias gu="gulp"
alias gr="grunt"
alias v="vim"
alias t="tree -I 'node_modules|dist'"
alias xfa="sudo"
alias cat=bat
alias man=batman
alias j=autojump
alias gc="git-stats -g"
alias codei=code-insiders
alias he=heroku
alias cz="npx cz"

# tells me my IP Address
alias myip='curl ip.appspot.com'

# Make directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# open up emoji cheat sheet in browser
alias emojis="open http://www.emoji-cheat-sheet.com/"

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
alias nch="npm-check"
alias npmt="npm test"
alias npms="npm start"
alias npmr="npm run "
alias npmi="npm install"
alias npmis="npm install -S"
alias npmid="npm install -D"
alias npmig="npm install -g"

# ionic
alias io="ionic"
alias cdv="cordova"
alias ioc="ionic cordova"
alias iog="ionic generate"
alias iorm="rm -rf node_modules/ && rm -rf plugins/ && rm -rf www/ && rm -rf platforms/ && rm -rf .sourcemaps/"
alias ioi="npm i && ioc build"
alias ior="ioc run"
alias ioan="ior android --device"
alias cpl="cordova plugin list"
alias ioap="ioc plugin add"
alias iormp="ioc plugin rm"

# redis
alias redis-start="brew services start redis"
alias redis-stop="brew services stop redis"
alias redis-restart="brew services restart redis"
alias redis-monitor="redis-cli monitor"

#tmux
alias klt="tmux kill-session"
# restart window
alias wtf="source ~/.zshrc"

# Open directory or program
alias gc="google-chrome"
alias ff="firefox"
alias go="nautilus"
alias ngrok="~/ngrok"

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

function myip2() {
  curl --request GET \
  --url https://freegeoip.app/json/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json'
}

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

#
# Personal Goals
#

# check off personal goals (open main README.md in vim)
alias pg-ch="vim ~/proyectos/dk/README.md"

# mongo
alias mod="mongod --dbpath /Users/$(whoami)/data/mongodb"

# create new week in review
function pg-rv() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a file name: month - week (i.e. 11 2)"
    else
      cd ~/proyectos/dk/accomplishments && touch 2017-"$1"-week"$2".md;
      cat 0-review-template.md >> 2017-"$1"-week"$2".md && vim 2017-"$1"-week"$2".md;
  fi
}

# add a thing to do the the following week
# this function opens the newest accomplishments file in vim
# nw stands for "next week"
function pg-nw() {
  if [ $# -eq 0 ]; then
    cd ~/proyectos/dk/accomplishments;
    newestFile=$(ls -t | head -n1);
    vim $newestFile;
  fi
}

# add to content list (opens content list folder in vim)
# i.e. pg-add blog-post or pd-add resource
function pg-add() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a content type! (i.e. pg-add video)"
    else
      vim ~/proyectos/dk/content-list/"$1"s.md
  fi
}

# push my changes to my github master branch and open the page
alias pg-gh="cd ~/proyectos/dk &&
  git add -A &&
  git commit -m 'push from terminal' &&
  git push origin master &&
  open https://github.com/kevinrodbe/personal-goals"

  ## Download mp3 audio from Youbtube (need youtube-dl first)
function mp3() {
  if [ $# -eq 0 ]; then
      print "Oops. Please enter a url: get-audio <youtube-link>"
  else
    cd ./Music && youtube-dl --extract-audio --audio-format mp3 $1 && cd -
  fi
}

# Start an HTTP server from a directory, optionally specifying the port
function server() {
	local port="${1:-8000}"
	open "http://localhost:${port}/" &
 	# statikk is good because it won't expose hidden folders/files by default.
 	# yarn global add statikk
 	statikk --port "$port" .
}

function ssl() {
  mkdir .cert
  mkcert -key-file ./.cert/key.pem -cert-file ./.cert/cert.pem "localhost"
  mkcert -install
}

# Copy w/ progress
cp_p () {
  rsync -WavP --human-readable --progress $1 $2
}

# get gzipped size
function gz() {
	echo "orig size    (bytes): "
	cat "$1" | wc -c
	echo "gzipped size (bytes): "
	gzip -c "$1" | wc -c
}

# Extract archives - use: extract <file>
# Based on http://dotfiles.org/~pseup/.bashrc
function extract() {
	if [ -f "$1" ] ; then
		local filename=$(basename "$1")
		local foldername="${filename%%.*}"
		local fullpath=`perl -e 'use Cwd "abs_path";print abs_path(shift)' "$1"`
		local didfolderexist=false
		if [ -d "$foldername" ]; then
			didfolderexist=true
			read -p "$foldername already exists, do you want to overwrite it? (y/n) " -n 1
			echo
			if [[ $REPLY =~ ^[Nn]$ ]]; then
				return
			fi
		fi
		mkdir -p "$foldername" && cd "$foldername"
		case $1 in
			*.tar.bz2) tar xjf "$fullpath" ;;
			*.tar.gz) tar xzf "$fullpath" ;;
			*.tar.xz) tar Jxvf "$fullpath" ;;
			*.tar.Z) tar xzf "$fullpath" ;;
			*.tar) tar xf "$fullpath" ;;
			*.taz) tar xzf "$fullpath" ;;
			*.tb2) tar xjf "$fullpath" ;;
			*.tbz) tar xjf "$fullpath" ;;
			*.tbz2) tar xjf "$fullpath" ;;
			*.tgz) tar xzf "$fullpath" ;;
			*.txz) tar Jxvf "$fullpath" ;;
			*.zip) unzip "$fullpath" ;;
			*) echo "'$1' cannot be extracted via extract()" && cd .. && ! $didfolderexist && rm -r "$foldername" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}


function frg() {
  rg -i "$1" | fzf
}

fgi() {

  # param validation
  if [[ ! `git log -n 1 $@ | head -n 1` ]] ;then
    return
  fi

  # filter by file string
  local filter
  # param existed, git log for file if existed
  if [ -n $@ ] && [ -f $@ ]; then
    filter="-- $@"
  fi

  # git command
  local gitlog=(
    git log
    --graph
    --color=always
    --abbrev=7
    --format='%Cgreen%h%Creset%C(auto)%d%Creset %C(cyan)<%an, %cr>%Creset %s'
    $@
  )

  # fzf command
  local fzf=(
    fzf
    --ansi
    --no-sort
    --reverse
    --tiebreak=index
    --preview "f() { set -- \$(echo -- \$@ | grep -o '[a-f0-9]\{7\}'); [ \$# -eq 0 ] || git show --color=always \$1 $filter; }; f {}"
    --bind=ctrl-s:toggle-sort
   --preview-window=right:60%
  )

  # piping them
  $gitlog | $fzf
}

# # fkill - kill process
# # Similar to "kill -9 **" fzf default completion
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# # Wrapper over wd. List bookmarks in fzf and pipe selected alias to "wd"
# # mfaerevaag/wd: Jump to custom directories in zsh - https://github.com/mfaerevaag/wd
# # Inspired by: Fuzzy bookmarks for your shell [Dmitry Frank] - https://dmitryfrank.com/articles/shell_shortcuts
fwd(){
  local wdpoint
  wdpoint=$(wd list | sed 1d | fzf | awk '{ print $1 }')

  if [ "$wdpoint" != "" ]
  then
    wd "$wdpoint"
  fi
}

fo() {
  local out file key
  IFS=$'\n' out=("$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)")
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

function p4() {
  tmux split-window -v
  tmux split-window -v
  tmux select-pane -t 1
  tmux split-window -v
  if [ "$1" ]
    then
      tmux renamew "$1"
  fi
}

function vi-be() {
  tmux split-window -v
  tmux split-window -v
  tmux select-pane -t 1
  tmux split-window -v
  tmux renamew "vi-be"
  tmux send-keys -t 1 'p && cd mx/vibia/sr-products' C-j
  tmux send-keys -t 2 'p && cd mx/vibia/sr-images' C-j
  tmux send-keys -t 3 'p && cd mx/vibia/sr-users' C-j
  tmux send-keys -t 4 'p && cd mx/vibia/sr-projects' C-j
}

function vi-be-2() {
  tmux split-window -v
  tmux split-window -v
  tmux select-pane -t 1
  tmux split-window -v
  tmux renamew "pri-erp-proj-or"
  tmux send-keys -t 1 'p && cd mx/vibia/sr-prices' C-j
  tmux send-keys -t 2 'p && cd mx/vibia/sr-erp' C-j
  tmux send-keys -t 3 'p && cd mx/vibia/sr-projects' C-j
  tmux send-keys -t 4 'p && cd mx/vibia/sr-orders' C-j
}