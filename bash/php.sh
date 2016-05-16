#!/usr/bin/env bash
# para ver los modulos disponibles para php7
# sudo apt-cache search php7-* 

sudo apt-get -y install php7.0 libapache2-mod-php7.0 php7.0-mcrypt

#instalar CURL para PHP
sudo apt-get install curl

sudo apt-get install php7.0-curl

#libreria
sudo apt-get install php7.0-intl
sudo apt-get install php7.0-gd

sudo apt-get install php-pear
sudo apt-get install php7.0-dev

#sudo a2enmod php5
sudo apt-cache search php7-* 

sudo apt-get install php-mbstring php7.0-mbstring

sudo service apache2 restart

echo "** php7 instalado **"
