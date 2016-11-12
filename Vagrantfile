# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "mgmt.test.io" do |mgmt|
    mgmt.vm.box = "ubuntu/xenial64"
    mgmt.vm.box_check_update = true
    mgmt.vm.hostname = 'mgmt.test.io'
    mgmt.vm.network :private_network, ip: "192.168.11.11"
    mgmt.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "mgmt.test.io"]
    end
    mgmt.vm.provision :shell, path: "bootstrap-mgmt.sh"
  end

# Configure hostmanager plugin
 if Vagrant.has_plugin?("vagrant-hostmanager")
   config.hostmanager.enabled = true
   config.hostmanager.manage_host = true
   config.hostmanager.ignore_private_ip = false
   config.hostmanager.include_offline = true
 end
# @end: Configure hostmanager plugin

end
