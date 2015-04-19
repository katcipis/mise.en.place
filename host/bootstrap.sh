#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

./common.sh
./vim.sh
./docker.sh
./python.sh
