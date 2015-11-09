#!/usr/bin/env bash

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# associate sublimetext with git
git config --global core.editor "subl -n -w"

echo "sublimetext-3 instalado"
