#!/bin/sh

set -e

echo "Installing docker"
sudo pacman --noconfirm -S docker

echo "Adding user to docker group"
sudo groupadd -f docker
sudo gpasswd -a $USER docker


echo "Configuring to use OverlayFS"
sudo mkdir -p /etc/systemd/system/docker.service.d
printf "[Service]\nExecStart=\nExecStart=/usr/bin/docker daemon -H fd:// --storage-driver=overlay" | sudo tee --append /etc/systemd/system/docker.service.d/storage.conf

echo "Enabling docker"
sudo systemctl enable docker

echo "Installing docker compose"
sudo pacman --noconfirm -S docker-compose

echo ""
echo "=== Done, is we !!! ==="
