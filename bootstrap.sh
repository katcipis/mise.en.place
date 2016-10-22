#!/bin/sh

set -o errexit

./scripts/essentials.sh
./scripts/x.sh
./scripts/window-managers.sh
./scripts/i3-cfg.sh
./scripts/terminal.sh
./scripts/browsers.sh
./scripts/docker.sh
./scripts/vagrant.sh
./scripts/zsh.sh
./scripts/golang.sh
./scripts/python.sh
./scripts/vim.sh
./scripts/spotify.sh
./scripts/stress.sh
