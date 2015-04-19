#!/bin/sh

echo "Setting up Python goodness"
sudo apt-get install -y pylint python-setuptools python-dev
sudo easy_install -U pip
sudo pip install --upgrade pyflakes 
sudo pip install --upgrade pep8 
sudo pip install --upgrade ipython
