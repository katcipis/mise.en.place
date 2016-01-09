#!/bin/sh
set -e

echo "Install apt-file"
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install -y apt-file
apt-file update

echo "Installing git and other stuff"
sudo apt-get install -y openssh-server curl openvpn cmake xclip icedtea-plugin git

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Installing Sound Stuff"
sudo apt-get install -y audacious

echo "Golang Support"
sudo apt-get install -y golang-go

echo "Chromium"
sudo apt-get install -y chromium-browser
