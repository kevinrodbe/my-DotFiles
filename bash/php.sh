#!/usr/bin/env bash

sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt

#instalar CURL para PHP
sudo apt-get install curl

sudo apt-get install php5-curl

#libreria
sudo apt-get install php5-intl
sudo apt-get install php5-gd

sudo apt-get install php-pear
sudo apt-get install php5-dev

sudo a2enmod php5

sudo service apache2 restart

echo "** php5 instalado **"