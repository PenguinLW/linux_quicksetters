sudo mv /var/lib/postgres/data/data/ /var/lib/postgres/olddata/

mkdir /var/lib/postgres/data/ /var/lib/postgres/tmp/

chown postgres:postgres /var/lib/postgres/data/ /var/lib/postgres/tmp/ /var/lib/postgres/olddata/

sudo -su postgres
cd /var/lib/postgres/tmp
initdb -D /var/lib/postgres/data --locale=C.UTF-8 --encoding=UTF8 --data-checksums #initdb /var/lib/postgres/data

pg_upgrade -b /opt/pgsql-15/bin -B /usr/bin -d /var/lib/postgres/olddata -D /var/lib/postgres/data
