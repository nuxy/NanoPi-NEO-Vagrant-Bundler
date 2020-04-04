#!/bin/sh

pkg install -y ca_root_nss git picocom screen

#------------------------------------------------------------------+
# Qemu/Kernel
#------------------------------------------------------------------+

pkg install -y qemu-user-static u-boot-tools

#------------------------------------------------------------------+
# SQLite3
#------------------------------------------------------------------+

pkg install -y sqlite3

#------------------------------------------------------------------+
# NodeJS/Express
#------------------------------------------------------------------+

pkg install -y node12 npm-node12 python3

# Install NPM package.
cd /vagrant/server
npm install --no-audit --no-optional > /dev/null 2>&1

# Launch services.
#screen -dm sudo -u vagrant npm run build ; npm run start
