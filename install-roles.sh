#!/bin/sh
sudo rm -rf /etc/ansible/roles/katcipis.*
sudo mkdir -p /etc/ansible/roles

sudo cp -pr ./roles/vim /etc/ansible/roles/katcipis.workbench.vim
sudo cp -pr ./roles/git /etc/ansible/roles/katcipis.workbench.git
sudo cp -pr ./roles/ctools /etc/ansible/roles/katcipis.workbench.ctools
