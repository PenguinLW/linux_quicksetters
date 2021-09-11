#in venv
git clone https://github.com/varbhat/exatorrent.git

cd exatorrent/
make web && make app
npm fund
#in package-lock.json "lockfileVersion": 1 or the code "hasInstallScript": true
npm config get ignore-scripts
npm config set ignore-scripts true
npm run-script build
