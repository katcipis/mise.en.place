#!/bin/sh
rm -rf /etc/ansible/roles/katcipis.*
mkdir -p /etc/ansible/roles

cp -pr ./roles/vim /etc/ansible/roles/katcipis.workbench.vim
cp -pr ./roles/git /etc/ansible/roles/katcipis.workbench.git
cp -pr ./roles/ctools /etc/ansible/roles/katcipis.workbench.ctools
