#!/bin/sh

ansible-playbook install.yml -i inventory --connection=local
