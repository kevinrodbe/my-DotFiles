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
alias t="tree"
alias xfa="sudo"

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
alias iorm="rm -rf node_modules/ && rm -rf plugins/ && rm -rf www/ && rm -rf platforms/ && rm -rf .sourcemaps/"
alias ioi="npm i && ioc build"
alias ior="ioc run"
alias ioan="ior android --device"
alias cpl="cordova plugin list"
alias ioap="ioc plugin add"
alias iormp="ioc plugin rm"

#tmux
alias klt="tmux kill-session"
# restart window
alias wtf="source ~/.zshrc"

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

#
# Personal Goals
#

# check off personal goals (open main README.md in vim)
alias pg-ch="vim ~/proyectos/dk/README.md"

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
