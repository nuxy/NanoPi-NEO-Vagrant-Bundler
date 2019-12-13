# NanoPi-NEO-Vagrant-Bundler

OS independent [Vagrant](https://www.vagrantup.com) for the [NanoPi-NEO-FreeBSD-SDcard](https://github.com/nuxy/NanoPi-NEO-FreeBSD-SDcard) installer.

## Dependencies

- [Virtual Machine Manager](https://virt-manager.org)
- [Vagrant VMware Utility](https://developer.hashicorp.com/vagrant/install/vmware)
- [VMware](https://www.vmware.com)
- [vagrant-vmware-desktop](https://www.vagrantup.com/docs/vmware/installation.html#updating-the-vagrant-vmware-desktop-plugin)

## Vagrant plug-ins

    $ vagrant plugin install vagrant-hostmanager

## Virtual Machine Manager permissions

    $ sudo setfacl -m user:$USER:rw /var/run/libvirt/libvirt-sock

## Developers

### CLI options

Launch the virtual machine (install on firstboot):

    $ vagrant up

Suspend the virtual machine session:

    $ vagrant suspend

Resume the virtual machine session:

    $ vagrant resume

Update project submodules:

    $ git submodule update --init --recursive
