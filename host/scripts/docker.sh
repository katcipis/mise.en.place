#!/bin/sh

echo "Installing docker"
curl -sSL https://get.docker.com/ubuntu/ | sudo sh

sudo gpasswd -a $USER docker
sudo service docker restart
