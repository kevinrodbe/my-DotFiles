# prerequisite
sudo apt-get update
sudo apt-get install build-essential libssl-dev

################
# It will install the software into a subdirectory of your home directory at ~/.nvm
################

# pull down the nvm installation script
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

# Run the script
bash install_nvm.sh

# gain access to the nvm functionality
source ~/.profile

# To find out the versions of Node.js that are available for installation
# nvm ls-remote

# install
nvm install 6.0.0

# Usually, nvm will switch to use the most recently installed version. You can explicitly tell nvm to use the version we just downloaded by typing:
nvm use 6.0.0

# If you wish to default one of the versions
# nvm alias default 6.0.0

# reference version
nvm use default
