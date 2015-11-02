#!/usr/bin/env bash

#sudo npm install -g jade
echo "[Jade Instalado]"

sudo npm install -g stylus
echo "[Stylus Instalado]"

#sudo npm install -g coffee-script
#echo "[CoffeeScript Instalado]"

sudo npm install -g gulp
echo "[Gulp Instalado]"
#problema de gulp: watch enospc
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

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

sudo npm install -g phantomas
echo "[phantomas Instalado]"

#sudo npm install -g psi
#echo "[psi Instalado]"
