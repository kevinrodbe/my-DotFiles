#!/usr/bin/env bash

#instead of node to run your code, and now your process will automatically restart
npm i -g nodemon

#npm install -g jade
echo "[Jade Instalado]"

npm install -g node-sass
echo "[node-sass Instalado]"
npm install -g stylus
echo "[Stylus Instalado]"
npm install -g nib
echo "[Stylus Instalado]"

#node
npm install -g node-inspect

#npm install -g coffee-script
#echo "[CoffeeScript Instalado]"

# git
npm install --global diff-so-fancy

# ngrx
npm install ngrx-generator -g

npm i -g firebase-tools
echo "[********** Firebase installed **********]"

npm install -g gulp
echo "[Gulp Instalado]"
#problema de gulp: watch enospc
#echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
#actualizar package json de gulp
npm install -g npm-check-updates
npm install -g npm-check
echo "[Package actualizados]"
#npm install -g bower
#echo "[Bower Instalado]"

npm install -g jscs
echo "[JSCS Instalado]"

npm install -g jshint
echo "[JSHINT Instalado]"
npm install -g eslint
echo "[ESLINT Instalado]"

npm install -g browser-sync
echo "[browser-sync Instalado]"

#npm install -g grunt
#echo "[grunt Instalado]"

#npm install -g mocha
#echo "[Mocha Instalado]"

#dependencias de phantomjs
#sudo apt-get install libfreetype6 libfreetype6-dev
#sudo apt-get install libfontconfig1 libfontconfig1-dev

#cd ~
#export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64"
#wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
#sudo tar xvjf $PHANTOM_JS.tar.bz2

#sudo mv $PHANTOM_JS /usr/local/share
#sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin

npm install -g phantomas
phantomjs --version
echo "[phantomas Instalado]"

npm install -g bundle-buddy

#npm install -g psi
#echo "[psi Instalado]"

#TMI - https://github.com/addyosmani/tmi
npm install --global tmi

# webpagetest - (get apikey)
npm install webpagetest -g
echo "[webpagetest instalado]"

#pagespeed - https://github.com/addyosmani/psi
npm install --global psi
echo "[psi instalado]"

# now
npm i -g --unsafe-perm  now
# en c/proy: npm install --save-dev serve

# npx: https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b
npm install -g npx

# pnpm: https://medium.com/pnpm/why-should-we-use-pnpm-75ca4bfe7d93
npm install -g pnpm

# angular
npm install -g @angular/cli
npm install -g cordova ionic

# terminal
npm install -g tldr
npm install -g degit
npm i -g git-stats
# exa, bat, enhancd, fzf, ripgrep, colors

# install volta and set corepack
curl https://get.volta.sh | bash
corepack enable
corepack enable --install-directory ~/.volta/bin
corepack enable pnpm
