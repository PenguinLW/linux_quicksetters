#in venv
git clone https://github.com/varbhat/exatorrent.git

#pip3 install nodeenv
#nodeenv nenv
#. nenv/bin/activate

#https://nodejs.org/en/download/current/
wget https://nodejs.org/dist/v16.9.1/node-v16.9.1-linux-armv7l.tar.xz --no-check-certificate #wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-armv7l.tar.xz --no-check-certificate
tar -xpJf node-v16.9.1-linux-armv7l.tar.xz && rm -fr node-v16.9.1-linux-armv7l.tar.xz
ln
make web && make app
