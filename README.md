# Ansible Playbook to install Nginx and Let's Encrypt, tested with Vagrant

## Updates Nov. 2016
* Ansible 2.2 support
* Add Vagrant local test
* Work with Vagrant hosts-updater plugin
* Restructure with Ansible Best Practices
* Install ansible inside Vagrant box and test it
* access from local browser
* test before install
* more simple approach
* tested on ubuntu 16.04
* you must have 1 account with Let's Encrypt.
* you must own the domain and points to the right Public IP
* Let's Encrypt on vagrant won't worked, just for testing Ansible syntax

An Ansible role to install nginx on Ubuntu based on
[h5bp's server configuration templates](https://github.com/h5bp/server-configs-nginx).
It offers simple configuration of SSL hosts with the ability to use [Let's Encrypt](https://letsencrypt.org/)
for the creation and renewal of free SSL certificates.

## How to run / Requirements
1. ubuntu 16.04 / ansible 2.2 / git
2. git clone https://github.com/almusaddar/ansible-nginx-letsencrypt-vagrant.git
3. cd ansible-nginx-letsencrypt-vagrant
4. vi group_vars/all and edit domain variable
5. ansible-playbook site.yml -i production --connection=local

## How to test with Vagrant
1. git clone https://github.com/almusaddar/ansible-nginx-letsencrypt-vagrant.git
2. cd ansible-nginx-letsencrypt-vagrant
3. vagrant up / vagrant ssh / cd /vagrant
4. ansible-playbook site.yml -i production --connection=local
