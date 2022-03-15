FROM ubuntu:latest

RUN \
    #sudo apt update -y && sudo apt-get update -y && \
    #sudo apt upgrade -y && sudo apt-get upgrade -y && \
    #sudo apt-get install -y git vlc htop nano && \
    #sudo apt-get install -y pcmanfm featherpad lxtask xterm gedit #xed
    apt update && \
    apt install -y pcmanfm featherpad lxtask xterm gedit xed

ENV DISPLAY=host.docker.internal:0.0

CMD pcmanfm