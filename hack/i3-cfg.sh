#!/bin/sh

set -o errexit
set -o nounset

mkdir -p ${HOME}/.i3
cp ./hack/cfg/i3/config /${HOME}/.i3/config
