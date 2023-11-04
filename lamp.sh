#!/bin/bash

#updating the system
sudo apt-get update
sudo apt-get upgrade -y

#installing all the required packages 
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql

#MySQL security
sudo mysql_secure_installation

#PHP app cloning
git clone https://github.com/laravel/laravel.git

#Apache configuration to serve the PHP app
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

#to update the changes 
sudo systemctl restart apache2
