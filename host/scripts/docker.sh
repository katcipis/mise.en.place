#!/bin/sh

echo "Installing docker"
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

sudo gpasswd -a $USER docker
sudo service docker restart

sudo apt-get install -y python-pip
sudo pip install -U docker-compose
