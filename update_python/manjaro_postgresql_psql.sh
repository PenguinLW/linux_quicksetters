#!/bin/bash

sudo pacman -S postgresql
#sudo systemctl is-active postgresql
#sudo systemctl is-enabled postgresql
#sudo systemctl status postgresql
#sudo pg_isready
#sudo -u postgres psql

sudo -su postgres
#in postgres, which this open
initdb /var/lib/postgres/data
systemctl start postgresql.service
exit

#in terminal
sudo systemctl restart postgresql.service

#in pgadmin4: add server with custom name, "localhost" address, username "postgres", no password
