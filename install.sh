#!/bin/sh
apt-get install -y python-pip python-dev git
pip install ansible
ansible-playbook -i /vagrant/inventory /vagrant/dev.yml
