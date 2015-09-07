#!/bin/sh
set -e

#echo "Setting up Python goodness"
#apt-get install -y pylint python-setuptools python-dev
#easy_install -U pip
#pip install --upgrade pyflakes 
#pip install --upgrade pep8 
#pip install --upgrade ipython

echo "Installing my vim"
git clone git@github.com:katcipis/my.vim.git
cd my.vim
make bootstrap
make
