#!/usr/bin/env bash

#rar
sudo apt-get install unrar

sudo apt-get install meld

sudo apt-get install samba

sudo apt-get install filezilla

sudo apt-get install openssh-client
sudo apt-get install openssh-server

sudo apt-get install libcurl3-openssl-dev

sudo apt-get install pecl

#Java
#sudo add-apt-repository -y ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install oracle-java9-installer

#sudo pecl install mongo

#yo
sudo apt-get install flashplugin-installer pepperflashplugin-nonfree
sudo apt-get install adobe-flashplugin
sudo apt-get install gimp inkscape
sudo apt-get install bleachbit

sudo apt-get install python-setuptools

sudo easy_install Pygments

# Voz en termial
sudo apt-get install espeak
# espeak -v es-mx "Mi texto"

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

#Descarga de yt
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

#Brave browser
wget -O brave.deb https://laptop-updates.brave.com/latest/dev/ubuntu64
sudo dpkg -i brave.deb

# vim: plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master

# vim: nvim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
