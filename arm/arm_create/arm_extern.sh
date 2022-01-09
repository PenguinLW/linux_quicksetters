##in terminal
TPATH=/mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm
mkdir $TPATH/termux
## chmod 0711 $TPATH
chmod 0777 $TPATH
chmod 0777 $TPATH/termux

# chmod 0711 $TPATH/
# chmod 0711 $TPATH/termux

##in termux
# mount | grep expand

cp -avr /data/data/com.termux/files/usr /mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm/termux
cp -avr /data/data/com.termux/files/home /mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm/termux

ln -s /data/data/com.termux/files/
ln -s /mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm/
ln -s /mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm/termux/

cd /data/data/com.termux/files
mv usr tmpu
mv home tmph

ln -s /mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm/termux/usr/ usr
ln -s /mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm/termux/home/ home

## mv tmpu usr
## mv tmph home
