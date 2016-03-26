#!/bin/sh
set -e

echo "Installing cool fonts"
cd /tmp
rm -rf my.fonts
git clone https://github.com/katcipis/my.fonts.git
cd my.fonts
make
