#!/bin/sh

echo "Installing docker"
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

echo "Adding user to docker group"
sudo gpasswd -a $USER docker

echo "Installing stuff that makes docker work properly :-)"
sudo apt-get install -y apparmor aufs-tools

sudo service docker restart

echo "Installing docker compose"
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo -i chmod +x /usr/local/bin/docker-compose