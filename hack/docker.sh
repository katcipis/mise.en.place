#!/bin/sh

set -e

echo "Installing docker"
sudo pacman --noconfirm -S docker

echo "Adding user to docker group"
sudo groupadd -f docker
sudo gpasswd -a $USER docker

echo "Enabling docker"
sudo systemctl enable docker

echo "Installing docker compose"
sudo pacman --noconfirm -S docker-compose

echo ""
echo "=== Done, is we !!! ==="
