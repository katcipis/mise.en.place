#!/bin/sh

set -o errexit
set -o nounset

packagename=$1

cd /tmp
rm -rf $packagename
git clone https://aur.archlinux.org/$packagename.git
cd $packagename
makepkg -sri
cd -
