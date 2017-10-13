#!/bin/sh

set -o errexit
set -o nounset

export GOROOT=$HOME/go
export GOPATH=$HOME/workspace/go
export PATH=$PATH":"$GOPATH"/bin:"$GOROOT"/bin"

hack/essentials.sh
hack/x.sh
hack/fonts.sh
hack/golang.sh
hack/window-managers.sh
hack/terminal.sh
hack/browsers.sh
hack/kitty-cfg.sh
hack/docker.sh
hack/zsh.sh
hack/vim.sh
hack/spotify.sh
hack/stress.sh
hack/aur.sh mscgen
hack/aur.sh ctop-bin
hack/aur.sh ii
