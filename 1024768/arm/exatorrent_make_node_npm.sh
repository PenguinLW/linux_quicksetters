#in venv
git clone https://github.com/varbhat/exatorrent.git

cd exatorrent/
make web #make web && make app

#cd internal/web/

#npm fund
##in package-lock.json "lockfileVersion": 1 or the code "hasInstallScript": true
#npm config get ignore-scripts
#npm config set ignore-scripts true

#npm install
#npm run-script build

make app #make web && make app
#env CGO_ENABLED=1 go build -trimpath -buildmode=pie -ldflags '-extldflags "-static -s -w"' -o  build/exatorrent exatorrent.go
