echo HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\
wsl --list -v
wsl --shutdown
wsl --export docker-desktop-data "D:\Programm\docker_wsl"
wsl --unregister docker-desktop-data
wsl --import docker-desktop-data "D:\Programm\docker_wsl\data" "D:\Programm\docker_wsl\docker-desktop-data.tar" --version 2