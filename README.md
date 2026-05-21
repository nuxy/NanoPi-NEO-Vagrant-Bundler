# NanoPi-NEO-Vagrant-Bundler [![NO AI](https://raw.githubusercontent.com/nuxy/no-ai-badge/master/badge.svg)](https://github.com/nuxy/no-ai-badge)

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

Update the vagrant box to latest release:

    $ vagrant box update

Update project submodules:

    $ git submodule update --init --recursive

## Contributions

If you fix a bug, or have a code you want to contribute, please send a pull-request with your changes.

## Versioning

This package is maintained under the [Semantic Versioning](https://semver.org) guidelines.

## License and Warranty

This package is distributed in the hope that it will be useful, but without any warranty; without even the implied warranty of merchantability or fitness for a particular purpose.

_NanoPi-NEO-Vagrant-Bundler_ is provided under the terms of the [MIT license](http://www.opensource.org/licenses/mit-license.php)

## Author

[Marc S. Brooks](https://github.com/nuxy)
