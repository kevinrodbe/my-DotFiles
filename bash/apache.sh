#!/usr/bin/env bash

sudo apt-get install apache2

### Habilitar configuracion .htaccess
#RewriteEngine
sudo a2enmod rewrite
sudo service apache2 restart

#ExpiresActive
sudo a2enmod expires
sudo service apache2 restart

#headers
sudo a2enmod headers
sudo service apache2 restart

echo "** apache2 instalado **"