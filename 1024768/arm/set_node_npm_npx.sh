#in venv
#https://danidudas.medium.com/how-to-install-node-js-and-npm-on-any-raspberry-pi-5a82acdfeefc

#pip3 install nodeenv
#nodeenv nenv
#. nenv/bin/activate

wget https://nodejs.org/dist/v10.16.1/node-v10.16.1-linux-armv7l.tar.xz --no-check-certificate
tar -xpJf node-v10.16.1-linux-armv7l.tar.xz && rm -fr node-v10.16.1-linux-armv7l.tar.xz
update-alternatives --install /usr/bin/node node /root/node-v10.16.1-linux-armv7l/bin/node 1
update-alternatives --set node /root/node-v10.16.1-linux-armv7l/bin/node
update-alternatives --install /usr/bin/npm npm /root/node-v10.16.1-linux-armv7l/bin/npm 1
update-alternatives --set npm /root/node-v10.16.1-linux-armv7l/bin/npm
update-alternatives --install /usr/bin/npx npx /root/node-v10.16.1-linux-armv7l/bin/npx 1
update-alternatives --set npx /root/node-v10.16.1-linux-armv7l/bin/npx

##https://nodejs.org/en/download/current/
#wget https://nodejs.org/dist/v16.9.1/node-v16.9.1-linux-armv7l.tar.xz --no-check-certificate #wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-armv7l.tar.xz --no-check-certificate
#tar -xpJf node-v16.9.1-linux-armv7l.tar.xz && rm -fr node-v16.9.1-linux-armv7l.tar.xz
#update-alternatives --install /usr/bin/node node /root/node-v16.9.1-linux-armv7l/bin/node 1
#update-alternatives --set node /root/node-v16.9.1-linux-armv7l/bin/node
#update-alternatives --install /usr/bin/npm npm /root/node-v16.9.1-linux-armv7l/bin/npm 1
#update-alternatives --set npm /root/node-v16.9.1-linux-armv7l/bin/npm
#update-alternatives --install /usr/bin/npx npx /root/node-v16.9.1-linux-armv7l/bin/npx 1
#update-alternatives --set npx /root/node-v16.9.1-linux-armv7l/bin/npx

#npm install -g npm
##npm fund

#https://stackoverflow.com/questions/46053414/npm-warn-requires-a-peer-of-but-none-is-installed-you-must-install-peer
apt install libssl1.0-dev -y
apt install nodejs-dev -y
apt install libnode-dev -y
apt install node-gyp -y

node -v
npm -v
npx -v
