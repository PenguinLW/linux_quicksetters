#!/bin/bash

#sudo pacman -Rs postgresql
##sudo pacman -Syyu
sudo pacman -S postgresql --noconfirm #sudo pacman -S postgresql
#sudo systemctl is-active postgresql
#sudo systemctl is-enabled postgresql
#sudo systemctl status postgresql
#sudo pg_isready
#sudo -u postgres psql

#pg_ctl start -w -t 600
#pg_ctl stop
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

sudo -iu postgres initdb --locale $LANG -E UTF8 -D /var/lib/postgres/data
#in terminal
sudo systemctl restart postgresql.service

systemctl status postgresql.service
journalctl -xeu postgresql.service

#in pgadmin4: add server with custom name, "localhost" address, username "postgres", no password


#https://www.bigbinary.com/blog/configure-postgresql-to-allow-remote-connection
sudo gedit /var/lib/postgres/data/postgresql.conf #change listen_addresses = '*'
sudo gedit /var/lib/postgres/data/pg_hba.conf #change 127.0.0.1/32 to 0.0.0.0/0


#sudo pacman -Rnsc postgresql --no-confirm
#sudo rm -dfr /var/lib/postgres
#sudo rm -drf /etc/postgresql/
#sudo rm -drf /var/log/postgresql/
#sudo systemctl daemon-reload && sudo systemctl reset-failed


#restore
sudo -su postgres

#dropdb -U postgres data_of_peng && dropdb -U postgres data_of_yorey
#createdb -U postgres data_of_yorey && createdb -U postgres data_of_peng

#psql -d data_of_peng
#\i \...\restore.sql
#\q
#psql -d data_of_yorey
#\i \...\restore.sql
#\q

#psql -U postgres -d data_of_peng -f /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_peng/restore.sql
#pg_restore -U postgres -f /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_yorey #pg_restore -U postgres -d data_of_yorey -f /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_yorey
#pg_restore -U postgres -f /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_peng #pg_restore -U postgres -d data_of_peng -f /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_peng
pg_restore -U postgres -d data_of_peng --single-transaction /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_peng.tar 
pg_restore -U postgres -d data_of_yorey --single-transaction /media/penguinl/PenguinL/PycharmProjects/penguinl/data_of_yorey.tar
