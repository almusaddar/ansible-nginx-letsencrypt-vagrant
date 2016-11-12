#!/usr/bin/env bash

echo "Provisioning Test Node"

# install ansible (http://docs.ansible.com/intro_installation.html)
echo "Installing Ansible"
apt-get -y install software-properties-common > /dev/null
apt-add-repository -y ppa:ansible/ansible > /dev/null
apt-get update > /dev/null
apt-get -y install ansible > /dev/null

# configure hosts file for our internal network defined by Vagrantfile
echo "Configuring Local DNS for Ansible Access"
echo "192.168.11.11  mgmt.test.io mgmt" >> /etc/hosts

echo "Generating SSH Keys for Ansible Access"
ssh-keygen -t rsa -P '' -f /home/ubuntu/.ssh/id_rsa > /dev/null
chmod 700 /home/ubuntu/.ssh > /dev/null
chown -R ubuntu:ubuntu /home/ubuntu/.ssh > /dev/null
cp /home/ubuntu/.ssh/id_rsa.pub /vagrant/ssh/id_rsa.pub > /dev/null
ssh-keyscan -t rsa mgmt > /etc/ssh/ssh_known_hosts
ssh-keyscan -t dsa mgmt > /etc/ssh/ssh_known_hosts

echo "Copying SSH Public Key"
cat /vagrant/ssh/id_rsa.pub >> /home/ubuntu/.ssh/authorized_keys
