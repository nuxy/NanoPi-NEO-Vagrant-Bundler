#!/bin/sh

if [ ! -e /dev/da1 ]; then
  echo 'Missing USB SDCard: Exiting setup..'
  exit 1
fi

pkg install -y ca_root_nss git screen
