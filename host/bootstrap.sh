#!/bin/sh

ansible-playbook install.yml -i inventory --connection=local
ansible-playbook configure.yml -i inventory --connection=local
