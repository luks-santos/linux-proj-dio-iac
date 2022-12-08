#! /bin/bash

apt-get update
apt-get upgrade -y

apt-get install apache2 unzip -y

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cd /tmp

unzip /tmp/main.zip  

cp -R /tmp/linux-site-dio-main/* /var/www/html

echo "Finalizado!"

