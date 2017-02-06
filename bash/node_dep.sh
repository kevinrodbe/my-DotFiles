#!/usr/bin/env bash

#instead of node to run your code, and now your process will automatically restart 
sudo npm i -g nodemon

#sudo npm install -g jade
echo "[Jade Instalado]"

sudo npm install -g stylus
echo "[Stylus Instalado]"
sudo npm install -g nib
echo "[Stylus Instalado]"

#sudo npm install -g coffee-script
#echo "[CoffeeScript Instalado]"


sudo npm i -g firebase-tools
echo "[********** Firebase installed **********]"

sudo npm install -g gulp
echo "[Gulp Instalado]"
#problema de gulp: watch enospc
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
#actualizar package json de gulp
sudo npm install -g npm-check-updates 
echo "[Package actualizados]"
#sudo npm install -g bower
#echo "[Bower Instalado]"

sudo npm install -g jscs
echo "[JSCS Instalado]"

sudo npm install -g jshint
echo "[JSHINT Instalado]"

sudo npm install -g browser-sync
echo "[browser-sync Instalado]"

#sudo npm install -g grunt
#echo "[grunt Instalado]"

#sudo npm install -g mocha
#echo "[Mocha Instalado]"

#dependencias de phantomjs
sudo apt-get install libfreetype6 libfreetype6-dev
sudo apt-get install libfontconfig1 libfontconfig1-dev

cd ~
export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64"
wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2
sudo tar xvjf $PHANTOM_JS.tar.bz2

sudo mv $PHANTOM_JS /usr/local/share
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin

sudo npm install -g phantomas
phantomjs --version
echo "[phantomas Instalado]"

#sudo npm install -g psi
#echo "[psi Instalado]"

#TMI - https://github.com/addyosmani/tmi
sudo npm install --global tmi

# webpagetest - (get apikey)
sudo npm install webpagetest -g
echo "[webpagetest instalado]"

#pagespeed - https://github.com/addyosmani/psi
sudo npm install --global psi
echo "[psi instalado]"
