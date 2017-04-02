#!/bin/sh
set -o errexit
set -o nounset

go get -u github.com/NeowayLabs/nash/cmd/...
sudo rm -rf /bin/nash
sudo ln -s $GOPATH/bin/nash /bin/nash

function cleanup () {
    rm -f master.zip
    rm -rf dotnash-master
}

cd /tmp
cleanup
wget https://github.com/katcipis/dotnash/archive/master.zip
unzip master.zip
cd dotnash-master
make
cd ..
cleanup
