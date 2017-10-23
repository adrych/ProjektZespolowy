#!/bin/bash

. /etc/init.d/common.sh
/etc/init.d/frontend_install.sh

# Testuje polaczenie z baza danych (TODO: wykasowac to potem)
mysql -h 172.21.0.2 -u root -ppassword -e 'show databases\G'

# Uruchamiam aplikacje
frontend
