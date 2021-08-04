'#!/bin/bash mkdir ~/ddb cd ~/ddb git clone https://github.com/kalsky/django-dashboard-black
  --depth 1 --branch=master ~/ddb virtualenv env source env/bin/activate pip3 install
  -r requirements python manage.py makemigrations python manage.py migrate

  '
