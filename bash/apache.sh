#!/usr/bin/env bash

sudo apt-get install apache2

### Habilitar configuracion .htaccess
#RewriteEngine
sudo a2enmod rewrite
sudo service apache2 restart

#ExpiresActive
sudo a2enmod expires
sudo service apache2 restart

# En windows con xampp.
# Buscar y descomentar "mod_expires.so" en  C:\XAMPP\apache\conf\httpd.conf
# LoadModule expires_module modules/mod_expires.so

#headers
sudo a2enmod headers
sudo service apache2 restart

echo "** apache2 instalado **"
