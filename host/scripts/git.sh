#!/bin/sh
set -e

echo "Installing git"
apt-get install -y git

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"
