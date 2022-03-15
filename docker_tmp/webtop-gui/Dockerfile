FROM ghcr.io/linuxserver/webtop:ubuntu-mate

RUN \
    sudo apt-get update -y && \
    sudo apt-get upgrade -y && \
    #sudo apt-get install -y git vlc htop nano gedit curl wget nautilus libreoffice ffmpeg --fix-missing && \
    #curl -O https://az764295.vo.msecnd.net/stable/8908a9ca0f221f36507231afb39d2d8d1e182702/code-stable-x64-1646706742.tar.gz \
    #curl -O https://az764295.vo.msecnd.net/stable/c722ca6c7eed3d7987c0d5c3df5c45f6b15e77d1/code_1.65.2-1646927742_amd64.deb \
    #curl -O https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code-stable-x64-1602601238.tar.gz \
    #curl -O https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code_1.50.1-1602600906_amd64.deb \
    #curl -O https://ftp.binance.com/electron-desktop/linux/production/binance-amd64-linux.deb
    #tar -xvzf *.tar.gz \
    #dpkg -i *.deb \
    sudo apt-get install -y pcmanfm featherpad lxtask xterm --fix-missing && \
    #which pcmanfm featherpad lxtask xterm htop git nano vlc gedit curl wget nautilus libreoffice ffmpeg && \
    #sed -i 's/geteuid/getppid/' /usr/bin/vlc \
    #sed -i 's/geteuid/getppid/' /usr/bin/binance \
    #sudo su - abc \
    ls -al

#ENV DISPLAY=host.docker.internal:0.0

CMD pcmanfm