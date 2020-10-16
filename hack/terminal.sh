#!/bin/sh

set -o nounset
set -o errexit

workdir=$(mktemp -d)
origdir=$(pwd)

cd ${workdir}
git clone https://github.com/katcipis/st.git
cd st
make
sudo make install
cd ${origdir}
rm -rf ${workdir}
