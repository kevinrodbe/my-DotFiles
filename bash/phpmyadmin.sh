#!/usr/bin/env bash


sudo apt-get install phpmyadmin
#apache2 -> yes
#dbconfig-common -> yes
#creamos un link simbólico hacia phpmyadmin: 
ln -s /usr/share/phpmyadmin /home/gohan/proyectos

#en digital ocean además poner:
#sudo nano /etc/apache2/apache2.conf
# phpMyAdmin Configuration
#Include /etc/phpmyadmin/apache.conf

sudo service apache2 restart

echo "** phpmyadmin instalado **"