#!/bin/sh

set -o nounset
set -o errexit

echo "Installing git"

sudo pacman --noconfirm -S git

echo "Git Global configs: starting"

git config --global push.default simple
git config --global user.name "Tiago Katcipis"
git config --global user.email "tiagokatcipis@gmail.com"

echo "Git Global configs: done"

echo "Git Global aliases: starting"
# Aliases
git config --global alias.find-file '!for branch in $(git for-each-ref --format="%(refname)" refs/heads); do if git ls-tree -r --name-only $branch | grep "$1" > /dev/null; then  echo "${branch}:"; git ls-tree -r --name-only $branch | nl -bn -w3 | grep "$1"; fi; done; :'

echo "Git Global aliases: done"
