#!/bin/bash

installdir="/usr/local/plan9"
workdir=`mktemp -d`
old=`pwd`
cd $workdir
echo "working on:"$workdir
wget https://github.com/madlambda/plan9port/archive/master.zip
unzip master.zip
sudo rm -rf $installdir
sudo mv plan9port-master $installdir
rm -rf $workdir
cd $installdir
sudo ./INSTALL
