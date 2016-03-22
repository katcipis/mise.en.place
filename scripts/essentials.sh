#!/bin/sh
set -e

echo "Install apt-file"
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install -y apt-file
sudo apt-file update

echo "Installing git and other stuff"
sudo apt-get install -y openssh-server curl openvpn cmake xclip git unrar
# sudo systemctl disable openvpn.service

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Installing Media Stuff"
sudo apt-get install -y audacious vlc pavucontrol

echo "Install Sysdig"
curl -s https://s3.amazonaws.com/download.draios.com/stable/install-sysdig | sudo bash
