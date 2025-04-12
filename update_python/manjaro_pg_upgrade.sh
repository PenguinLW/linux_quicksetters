sudo ls -al /var/lib/postgres/olddata/ & sudo ls -al /var/lib/postgres/tmp/
sudo rm -dfr /var/lib/postgres/olddata/ && sudo rm -dfr /var/lib/postgres/tmp/


sudo cp -R /var/lib/postgres/data-backup /var/lib/postgres/olddata/
sudo ls -al /var/lib/postgres

#sudo mv /var/lib/postgres/data/data/ /var/lib/postgres/olddata/
sudo mv /var/lib/postgres/data/ /var/lib/postgres/olddata/

sudo mkdir /var/lib/postgres/data/ /var/lib/postgres/tmp/

sudo chown postgres:postgres /var/lib/postgres/data/ /var/lib/postgres/tmp/ /var/lib/postgres/olddata/ /usr/local/pgsql/bin/

sudo chmod 0750 /var/lib/postgres/olddata #sudo chmod 0750 olddata #sudo chmod 0700 olddata
sudo systemctl stop postgresql.service

sudo -su postgres
cd /var/lib/postgres/tmp
#pwd
initdb -D /var/lib/postgres/data --locale=C.UTF-8 --encoding=UTF8 --data-checksums #initdb /var/lib/postgres/data

#install step-by-step from readme.md/install.txt
#it's safety now, none conflict
#https://www.postgresql.org/ftp/source/v15.4/

pg_upgrade -b /usr/local/pgsql/bin -B /usr/bin -d /var/lib/postgres/olddata -D /var/lib/postgres/data

/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start

/usr/bin/vacuumdb --all --analyze-in-stages

exit
#ALTER DATABASE template1 REFRESH COLLATION VERSION

##in venv
#pip install https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v9.2/pip/pgadmin4-9.2-py3-none-any.whl
