# Ansible Nginx vagrant Let's Encrypt

## Updates Nov. 2016 added to dominik work
* Ansible 2.2 support
* Add Vagrant local test
* Work with Vagrant hosts updated plugin
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
1. ubuntu 16.04
2. ansible 2.2 / git
3. git clone
4. cd
5. vi group_vars/all and edit domain variable
6. ansible-playbook site.yml -i production --connection=local
