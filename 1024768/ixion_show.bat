echo adb_listofd>> E:\PenguinL\tmp.bat
echo adb -s 192.168.43.1:5555 tcpip 5555>> E:\PenguinL\tmp.bat
echo adb -s 192.168.0.3:5555 tcpip 5555>> E:\PenguinL\tmp.bat
echo adb -s 192.168.0.4:5555 tcpip 5555>> E:\PenguinL\tmp.bat

echo @echo off>> E:\PenguinL\now_restart.bat
echo start "" /w /min adbd_restart>> E:\PenguinL\now_restart.bat
echo start "" /w /min adb_restart>> E:\PenguinL\now_restart.bat
echo taskkill /f /im scrcpy.exe>> E:\PenguinL\now_restart.bat
echo taskkill /f /im scrcpy-noconsole.exe>> E:\PenguinL\now_restart.bat
echo taskkill /f /im adb.exe>> E:\PenguinL\now_restart.bat
echo taskkill /f /im explorer.exe ^& start explorer.exe ^& start explorer.exe E:\>> E:\PenguinL\now_restart.bat
echo timeout /t 25>> E:\PenguinL\now_restart.bat
echo start "" /w /min ixion_connect>> E:\PenguinL\now_restart.bat
echo start "" /w /min scrcpy-noconsole --help>> E:\PenguinL\now_restart.bat

echo start scrcpy-noconsole -s 192.168.43.1:5555>> E:\PenguinL\ixion_0.bat
echo start scrcpy-noconsole -s 192.168.0.3:5555>> E:\PenguinL\ixion_1.bat
echo start scrcpy-noconsole -s 192.168.0.4:5555>> E:\PenguinL\ixion_2.bat

echo start /min E:\PenguinL\ixion_0.bat>> E:\PenguinL\show.bat
echo start /min E:\PenguinL\ixion_1.bat>> E:\PenguinL\show.bat
echo start /min E:\PenguinL\ixion_2.bat>> E:\PenguinL\show.bat
echo exit>> E:\PenguinL\show.bat
echo start /min E:\PenguinL\show.bat>> E:\PenguinL\now_restart.bat

echo start "" /w E:\PenguinL\tmp.bat ^&^& del E:\PenguinL\tmp.bat>> E:\PenguinL\now_restart.bat


echo del E:\PenguinL\ixion_0.bat>> E:\PenguinL\now_restart.bat
echo del E:\PenguinL\ixion_1.bat>> E:\PenguinL\now_restart.bat
echo del E:\PenguinL\ixion_2.bat>> E:\PenguinL\now_restart.bat
echo del E:\PenguinL\show.bat>> E:\PenguinL\now_restart.bat
echo exit>> E:\PenguinL\now_restart.bat
start "" /w /min E:\PenguinL\now_restart.bat
del E:\PenguinL\now_restart.bat