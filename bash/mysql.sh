#!/usr/bin/env bash

sudo apt-get install mysql-server mysql-client
sudo apt-get install libapache2-mod-auth-mysql php5-mysql mysql-common
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation

sudo service apache2 restart

echo "** mysql instalado **"