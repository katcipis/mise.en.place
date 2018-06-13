#!/bin/bash

export GOPATH=$HOME/workspace/go
export NASHPATH=$HOME/nash

NASH=$GOPATH"/src/github.com/NeowayLabs/nash"

echo "installing nash"

workdir=`mktemp -d`
cd $workdir
echo "working on:"$workdir
wget https://github.com/NeowayLabs/nash/archive/master.zip
unzip master.zip
rm -rf $NASH
mkdir -p $NASH
mv nash-master/* $NASH
rm -rf master.zip
cd $NASH
make install

echo "installing dotnash"
cd $workdir
wget https://github.com/katcipis/dotnash/archive/master.zip
unzip master.zip
cd dotnash-master
make install
