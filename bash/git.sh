#!/usr/bin/env bash

#git
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

#git-ftp:ubuntu apt
sudo aptitude install git-ftp
sudo apt-get install git-extras

#config
git config --global user.name "kevinrodbe"
git config --global user.email email@email.com

cp -f ../config/.gitconfig ~/

echo "** git instalado **"

git clone https://github.com/Fakerr/git-recall.git && cd git-recall
sudo make install
cd .. && rm -rf git-recall
