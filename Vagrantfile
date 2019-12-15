# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.box = "generic/freebsd12"
  config.vm.guest = :freebsd

  config.vm.hostname = "localhost"
  config.vm.network :private_network, ip: "1.9.7.3"

  config.vm.provider :vmware_workstation do |vmware|
    vmware.customize ["modifyvm", :id, "--cpus", 1]
    vmware.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provision "shell", path: ".vagrant/install.sh"
end
