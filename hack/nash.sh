#!/bin/sh
set -o errexit
set -o nounset

go get -u github.com/NeowayLabs/nash/cmd/nash
sudo rm -rf /bin/nash
sudo ln -s $GOPATH/bin/nash /bin/nash
