#!/usr/bin/env bash

curl -o krb-sublime-3.deb https://download.sublimetext.com/sublime-text_build-3156_amd64.deb
sudo dpkg -i krb-sublime-3.deb
rm -rf krb-sublime-3.deb

# associate sublimetext with git
git config --global core.editor "subl -n -w"

echo "sublimetext-3 instalado"
