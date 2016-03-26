#!/bin/sh

set -e

echo "Installing docker"
sudo pacman -S docker

echo "Adding user to docker group"
sudo gpasswd -a $USER docker

echo "Enabling docker"
sudo systemctl enable docker

echo "Installing docker compose"
DOCKER_COMPOSE_VERSION=1.5.0
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

echo ""
echo "=== Done, is we !!! ==="
