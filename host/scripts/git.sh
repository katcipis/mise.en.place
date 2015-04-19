#!/bin/sh

echo "Installing git"
sudo apt-get install -y git

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
