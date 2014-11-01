#!/bin/sh

sudo ansible-playbook playbook.yml -i inventory --connection=local
