#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

echo "Installing docker"
curl -sSL https://get.docker.com/ubuntu/ | sudo sh
