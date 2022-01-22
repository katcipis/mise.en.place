#!/bin/bash

set -o nounset
set -o errexit

installdir="/usr/local/plan9"
workdir=`mktemp -d`

echo "working on:"$workdir
echo "downloading plan9port"

cd $workdir
wget https://github.com/madlambda/plan9port/archive/master.zip
unzip master.zip

echo "build and install plan9port"

sudo rm -rf $installdir
sudo mv plan9port-master $installdir
rm -rf $workdir
cd $installdir
sudo ./INSTALL

echo "done"
