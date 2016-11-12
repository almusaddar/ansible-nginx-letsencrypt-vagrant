# Ansible Nginx Let's Encrypt

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
* you must have 1 account with letsencrypt
* you must own the domain and points to the right Public IP

An Ansible role to install nginx on Ubuntu based on
[h5bp's server configuration templates](https://github.com/h5bp/server-configs-nginx).
It offers simple configuration of SSL hosts with the ability to use [Let's Encrypt](https://letsencrypt.org/)
for the creation and renewal of free SSL certificates.

## Role Variables
Edit group_vars/all

## Example Playbook

```yml
---
# file: site.yml
- name: provision server
  hosts: all
  remote_user: ubuntu
  become: yes
  roles:
    - nginx
    - letsencrypt
```

## Requirements

ubuntu 16.04
ansible 2.2
ansible-playbook site.yml -i production --connection=local

## Roadmap

* crontab for renewal of Let's encrypt certificates
* travis.ci tests
* custom nginx include file
* replaceable nginx template on a host basis

## License

This project is licensed under an MIT license. It includes code from
[h5bp/server-config-nginx](https://github.com/h5bp/server-configs-nginx) for the
configuration of nginx.
