#!/bin/sh

echo "Setting up Python goodness"
apt-get install -y pylint python-setuptools python-dev
easy_install -U pip
pip install --upgrade pyflakes 
pip install --upgrade pep8 
pip install --upgrade ipython
