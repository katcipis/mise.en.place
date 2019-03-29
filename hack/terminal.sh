#!/bin/sh

set -o nounset
set -o errexit

projname=st-master
projpath=/tmp/st
filepath=$projpath/st.zip

rm -rf $projpath
mkdir -p $projpath

wget https://github.com/katcipis/st/archive/master.zip -O $filepath
cd $projpath
unzip $filepath
cd $projname

echo "Building st"
make
sudo make install
cd -

echo "Done, cleaning up"
cleanup
