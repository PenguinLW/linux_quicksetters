##in terminal

df -ha
mount | grep expand
ls -al /mnt/expand/256c0a74-4ac2-4d4c-842e-98478368879e/user/0/jackpal.androidterm/app_HOME/

TPATH=/mnt/expand/256c0a74-4ac2-4d4c-842e-98478368879e/user/0/jackpal.androidterm/app_HOME/

mkdir $TPATH/termux
chmod 0777 $TPATH
chmod 0777 $TPATH/termux

##in termux

cd /data/data/com.termux/files/

TPATH=/mnt/expand/256c0a74-4ac2-4d4c-842e-98478368879e/user/0/jackpal.androidterm/app_HOME/

mv home $TPATH/termux/

mv usr $TPATH/termux/

ln -s $TPATH/termux/home/

ln -s $TPATH/termux/usr/

cd home/
ln -s $TPATH/termux/
ln -s /data/data/com.termux/
