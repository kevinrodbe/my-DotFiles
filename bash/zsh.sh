#!/usr/bin/env bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

cp -f ../config/.zshrc ~/
cp -f ../config/.aliases ~/
cp -f ../config/kevinrodbe.zsh-theme ~/.oh-my-zsh/themes/

echo "ZSH instalado: ***** Restart terminal *****"
