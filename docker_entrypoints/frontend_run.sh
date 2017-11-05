#!/bin/bash

. /etc/init.d/common.sh
/etc/init.d/frontend_install.sh

# Testuje polaczenie z baza danych (TODO: wykasowac to potem)
sleep 30
mysql -h mariadb -u root -ppassword -e 'show databases\G'
# Uruchamiam aplikacje
frontend
