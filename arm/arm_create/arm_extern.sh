##in terminal
#pwd ##/mnt/expand/344285aa-2ac5-4197-9379-2344556789fd/user/0/jackpal.androidterm/app_HOME
#ls -al /mnt/expand/d5d3a234-c687-4688-9464-4c8a36f65792/user/0/jackpal.androidterm/app_HOME/termux
TPATH=/mnt/expand/9cb22acc-5b94-4337-a5d4-d79be552971f/user/0/jackpal.androidterm
mkdir $TPATH/termux
## chmod 0711 $TPATH
chmod 0777 $TPATH
chmod 0777 $TPATH/termux

# chmod 0711 $TPATH/
# chmod 0711 $TPATH/termux

##in termux
# mount | grep expand ##/mnt/expand/344285aa-2ac5-4197-9379-2344556789fd/user/0/jackpal.androidterm/app_HOME

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
