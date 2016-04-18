#!/bin/sh
set -o errexit

sudo pacman --noconfirm -S ipython pep8 python2-pylint python2-pyflakes
