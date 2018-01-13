#!/usr/bin/env bash

#install devps
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev

#install build-essentials
sudo apt-get install build-essential libssl-dev

#aptitude
sudo apt-get install aptitude

#This will update the packages on your system and install codecs for proprietary files with restricted copyright (MP3, AVI, MPEG, Microsoft fonts) and Adobe Flash Player:
sudo apt-get update && sudo apt-get dist-upgrade
sudo apt-get install ubuntu-restricted-extras

echo "** tools_linux instalado **"

# install pip3
sudo apt-get install python3-setuptools
sudo easy_install3 pip
# verify installation
# pip --help
pip install --upgrade pip

#Emoji keyboard
sudo apt install python3-gi gir1.2-gtk-3.0 gir1.2-glib-2.0 gir1.2-appindicator3-0.1 python3-xlib
sudo pip3 install https://github.com/OzymandiasTheGreat/emoji-keyboard/archive/master.zip

#Emoji en Chrome
#http://www.omgubuntu.co.uk/2016/08/enable-color-emoji-linux-google-chrome-noto

# tree directory
sudo apt-get install tree

# java
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"


