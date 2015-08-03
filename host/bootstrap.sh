#!/bin/sh

sudo apt-get update
sudo apt-get -y upgrade
sudo ./scripts/common.sh
sudo ./scripts/git.sh
sudo ./scripts/docker.sh
sudo ./scripts/python.sh
sudo ./scripts/go.sh
sudo ./scripts/spotify.sh
sudo ./scripts/vagrant.sh

./scripts/vim.sh
./scripts/zsh.sh
