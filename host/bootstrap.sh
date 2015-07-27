#!/bin/sh

sudo apt-get update
sudo apt-get -y upgrade

./scripts/common.sh
./scripts/vim.sh
./scripts/docker.sh
./scripts/python.sh
./scripts/go.sh
./scripts/spotify.sh
