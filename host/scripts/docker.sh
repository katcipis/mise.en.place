#!/bin/sh

echo "Installing docker"
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

echo "Adding user to docker group"
sudo gpasswd -a $USER docker

echo "Installing stuff that makes docker work properly :-)"
sudo apt-get install -y apparmor aufs-tools

sudo service docker restart

sudo apt-get install -y python-pip
sudo pip install -U docker-compose
