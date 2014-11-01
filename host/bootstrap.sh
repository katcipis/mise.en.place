#!/bin/sh

ansible-playbook playbook.yml -i inventory --connection=local
