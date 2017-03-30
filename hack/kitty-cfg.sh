#!/bin/sh

set -o errexit
set -o nounset

cfgdir=$HOME/.config/kitty

rm -rf $cfgdir
mkdir -p $cfgdir

cp ./hack/cfg/kitty/kitty.conf $cfgdir
