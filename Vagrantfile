# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.aliases = %w(api.nanopi-neo.localhost get.nanopi-neo.localhost)

  config.vm.box = "generic/freebsd12"
  config.vm.network :private_network, ip: "1.9.7.3"

  config.vm.provider :vmware_desktop do |vmware|
    vmware.vmx["memsize"]  = 2048
    vmware.vmx["numvcpus"] = 1
    vmware.vmx["usb"]      = "on"
    vmware.vmx["usbehci"]  = "on"

    # Support NanoPi/NEO SD card development.
    vmware.vmx["ehci.present"]             = "TRUE"
    vmware.vmx["usb.present"]              = "TRUE"
    vmware.vmx["usb_xhci.present"]         = "TRUE"
    vmware.vmx["usb_xhci.present"]         = "TRUE"
    vmware.vmx["usb.autoConnect.device0"]  = "path:1/1 autoclean:1"
    vmware.vmx["usb.generic.pluginAction"] = "guest"
  end

  config.vm.provision "shell", path: ".vagrant/install.sh"
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
end
