#!/bin/sh
set -o errexit
set -o nounset

version="1.15"
installdir=$HOME/.local/go

echo "Install Go "$version" at "$installdir

cd /tmp
wget https://storage.googleapis.com/golang/go$version.linux-amd64.tar.gz
tar -xvf go$version.linux-amd64.tar.gz

rm -rf $installdir
mkdir -p $installdir
mv ./go/* $installdir
