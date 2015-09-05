#!/bin/sh
set -e 

echo "Installing Vagrant"
wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb
dpkg -i vagrant_1.7.4_x86_64.deb
rm -rf vagrant_1.7.4_x86_64.deb

