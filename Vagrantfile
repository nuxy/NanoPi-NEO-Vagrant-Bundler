# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  config.vm.box = "generic/freebsd12"
  config.vm.network :private_network, ip: "1.9.7.3"

  config.vm.provider :vmware_workstation do |vmware|
    vmware.customize ["modifyvm", :id, "--cpus", 1]
    vmware.customize ["modifyvm", :id, "--memory", 2048]

    # Support NanoPI/NEO MicroSD card development.
    vmware.vmx["ehci.present"] = "TRUE"
    vmware.vmx["usb.present"] = "TRUE"
    vmware.vmx["usb.autoConnect.device0"] = "path:1/1 autoclean:1"
  end

  config.vm.provision "shell", path: ".vagrant/install.sh"
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
end
