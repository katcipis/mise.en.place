#!/bin/bash

workdir=`mktemp -d`
old=`pwd`
cd $workdir
echo "working on:"$workdir
wget https://github.com/9fans/plan9port/archive/master.zip
unzip master.zip
sudo mv plan9port-master /usr/local/plan9
rm -rf $workdir
cd /usr/local/plan9
sudo ./INSTALL
