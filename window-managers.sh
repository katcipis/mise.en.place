#!/bin/sh
set -e

echo "Installing Rio"
cd $HOME
git clone git@github.com:katcipis/plan9port.git
cd plan9port
./INSTALL
