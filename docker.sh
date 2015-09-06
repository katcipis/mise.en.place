#!/bin/sh
set -e

DOCKER_VERSION=1.6.2

echo "Installing docker compose"
curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
echo "Done"
