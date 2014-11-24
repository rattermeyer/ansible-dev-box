#!/bin/sh
# try to use faster mirror than us
cat /vagrant/mirrors.txt | sed -e 's/XXX/trusty/g' | cat - /etc/apt/sources.list | sed -e 's/us\./de./g' > /tmp/out.list && mv /tmp/out.list /etc/apt/sources.list
apt-get update
apt-get upgrade -y
#apt-get install --no-install-recommends ubuntu-desktop 
apt-get install -y python-pip python-yaml libyaml-dev python python-dev git unzip
pip install ansible

echo "Changing Directory and running playbook"
cp /vagrant/inventory /tmp
chmod -x /tmp/inventory
cd /vagrant
ansible-playbook -vvv -i /tmp/inventory dev.yml
