#in venv
git clone https://github.com/varbhat/exatorrent.git

#pip3 install nodeenv
#nodeenv nenv
#. nenv/bin/activate

#https://nodejs.org/en/download/current/
wget https://nodejs.org/dist/v16.9.1/node-v16.9.1-linux-armv7l.tar.xz --no-check-certificate #wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-armv7l.tar.xz --no-check-certificate
tar -xpJf node-v16.9.1-linux-armv7l.tar.xz && rm -fr node-v16.9.1-linux-armv7l.tar.xz
update-alternatives --install /usr/bin/node node /root/node-v16.9.1-linux-armv7l/bin/node 1
update-alternatives --set node /root/node-v16.9.1-linux-armv7l/bin/node
update-alternatives --install /usr/bin/npm npm /root/node-v16.9.1-linux-armv7l/bin/npm 1
update-alternatives --set npm /root/node-v16.9.1-linux-armv7l/bin/npm
update-alternatives --install /usr/bin/npx npx /root/node-v16.9.1-linux-armv7l/bin/npx 1
update-alternatives --set npx /root/node-v16.9.1-linux-armv7l/bin/npx
make web && make app
