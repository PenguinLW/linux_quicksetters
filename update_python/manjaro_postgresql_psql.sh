#!/bin/bash

##sudo pacman -Syyu
sudo pacman -S postgresql
#sudo systemctl is-active postgresql
#sudo systemctl is-enabled postgresql
#sudo systemctl status postgresql
#sudo pg_isready
#sudo -u postgres psql

ls -al  /var/cache/pacman/pkg/postgresql-*
ls -al  /var/cache/pacman/pkg/postgresql-libs-*
ls -al  /var/cache/pacman/pkg/*icu*
#sudo pacman -U postgresql-15.4-2-x86_64.pkg.tar
#sudo pacman -U postgresql-libs-15.4-2-x86_64.pkg.tar
#sudo pacman -U *icu*

sudo -su postgres
#in postgres, which this open
initdb /var/lib/postgres/data
systemctl start postgresql.service
exit

#in terminal
sudo systemctl restart postgresql.service

systemctl status postgresql.service
journalctl -xeu postgresql.service

#in pgadmin4: add server with custom name, "localhost" address, username "postgres", no password


#https://www.bigbinary.com/blog/configure-postgresql-to-allow-remote-connection
sudo gedit /var/lib/postgres/data/postgresql.conf #change listen_addresses = '*'
sudo gedit /var/lib/postgres/data/pg_hba.conf #change 127.0.0.1/32 to 0.0.0.0/0
