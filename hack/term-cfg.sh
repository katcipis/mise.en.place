#!/bin/sh

set -o errexit
set -o nounset

kittycfgdir=${HOME}/.config/kitty
mkdir -p ${kittycfgdir}
cp ./hack/cfg/term/kitty.conf ${kittycfgdir}
