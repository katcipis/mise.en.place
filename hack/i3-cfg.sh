#!/bin/sh

set -o errexit
set -o nounset

i3cfg="${HOME}/.config/i3"
mkdir -p ${i3cfg}
cp ./hack/cfg/i3/config ${i3cfg}/config
