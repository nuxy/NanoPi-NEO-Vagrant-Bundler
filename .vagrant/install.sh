#!/bin/sh

if [ ! -e /dev/da1 ]; then
  echo 'Missing USB SDCard: Exiting setup..'
  exit 1
fi

# Install Guest OS dependencies.
pkg install -y ca_root_nss git pcre2 screen subversion

# Compile SDcard sources, format disk, and install.
cd /vagrant/sdcard && sudo make
