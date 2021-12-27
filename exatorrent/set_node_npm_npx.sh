#in venv
#https://danidudas.medium.com/how-to-install-node-js-and-npm-on-any-raspberry-pi-5a82acdfeefc

pip3 install nodeenv
nodeenv nenv
. nenv/bin/activate

##https://nodejs.org/en/download/current/
#wget https://nodejs.org/dist/v16.9.1/node-v16.9.1-linux-x64.tar.xz --no-check-certificate
#tar -xpJf node-v16.9.1-linux-x64.tar.xz && rm -fr node-v16.9.1-linux-x64.tar.xz
#sudo update-alternatives --install /usr/bin/node node /home/penguinl/node-v16.9.1-linux-x64/bin/node 1
#sudo update-alternatives --set node /home/penguinl/node-v16.9.1-linux-x64/bin/node
#sudo update-alternatives --install /usr/bin/npm npm /home/penguinl/node-v16.9.1-linux-x64/bin/npm 1
#sudo update-alternatives --set npm /home/penguinl/node-v16.9.1-linux-x64/bin/npm
#sudo update-alternatives --install /usr/bin/npx npx /home/penguinl/node-v16.9.1-linux-x64/bin/npx 1
#sudo update-alternatives --set npx /home/penguinl/node-v16.9.1-linux-x64/bin/npx
#sudo update-alternatives --install /usr/bin/corepack corepack /home/penguinl/node-v16.9.1-linux-x64/bin/corepack 1
#sudo update-alternatives --set corepack /home/penguinl/node-v16.9.1-linux-x64/bin/corepack

##npm install -g npm
##npm fund

node -v
npm -v
npx -v
#deactivate_node