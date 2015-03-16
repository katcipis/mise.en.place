#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

./scripts/common.sh
./scripts/docker.sh
./scripts/python.sh
