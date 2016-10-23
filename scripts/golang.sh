#!/bin/sh
set -o errexit
set -o nounset

GO_VERSION="1.7.3"
GOROOT=$HOME/go
GOPATH=$HOME/workspace/go

echo "Install Go "$GO_VERSION" at "$GOROOT

cd /tmp
wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
tar -xvf go$GO_VERSION.linux-amd64.tar.gz

rm -rf $GOROOT
mkdir -p $GOROOT
mv ./go/* $GOROOT

go get -u github.com/NeowayLabs/nash/cmd/nash
ln -s $GOPATH/bin/nash /bin/nash
