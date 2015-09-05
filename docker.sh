#!/bin/sh
set -e

DOCKER_VERSION=1.6.2

# Add the repository to your APT sources
echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list

# Then import the repository key
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

# Install docker
apt-get update

echo "Installing docker"
apt-get install -y lxc-docker-$DOCKER_VERSION

echo "Adding user to docker group"
gpasswd -a $USER docker

echo "Installing stuff that makes docker work properly :-)"
apt-get install -y apparmor aufs-tools curl

service docker restart

echo "Installing docker compose"
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "=== docker done ==="
