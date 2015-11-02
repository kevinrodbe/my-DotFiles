#!/usr/bin/env bash

sudo apt-get install zsh

curl -L http://install.ohmyz.sh | sh

chsh -s /bin/zsh

sudo chsh -s /bin/zsh

cp ../.oh-my-zsh/themes/*.zsh-theme ~/.oh-my-zsh/themes/

# Zsh Plugins

cd ~/.oh-my-zsh/custom/plugins

# zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

# history-substring-search
git clone https://github.com/zsh-users/zsh-history-substring-search.git

# zsh-url-highlighter
git clone https://github.com/ascii-soup/zsh-url-highlighter.git 


echo "Zsh instalado"
