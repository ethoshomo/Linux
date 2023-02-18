#!/bin/bash

cd /tmp
apt update --yes && apt upgrade --yes
apt install apache2 -y
apt install unzip -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -r linux-site-dio-main/* /var/www/html

