#!/usr/bin/env bash

sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# myb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

echo "chrome instalado - reinicia la pc"