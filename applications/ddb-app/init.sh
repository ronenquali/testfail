#!/bin/bash
sudo apt-get update
sudo apt-get -y install python3-pip
sudo pip3 install --upgrade pip
sudo apt install sqlite3
sudo mkdir /var/www
sudo mkdir /var/www/ddb
git clone https://github.com/kalsky/django-dashboard-black --depth 1 --branch=master /var/www/ddb
cd /var/www/ddb
echo "ALLOWED_HOSTS.append('*')" | sudo tee -a core/settings.py
sudo sqlite3 db.sqlite3 "VACUUM;"
sudo chmod 755 db.sqlite3
sudo pip3 install -r requirements.txt
sudo python3 manage.py collectstatic --noinput
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
