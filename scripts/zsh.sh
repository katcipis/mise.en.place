#!/bin/sh
set -e

echo "Installing zsh and my zshrc"
sudo pacman -S --noconfirm zsh
cd /tmp
rm -rf my.zsh
git clone https://github.com/katcipis/my.zsh.git
cd my.zsh
make

echo "configuring zsh as default shell"
chsh -s /bin/zsh $USER
