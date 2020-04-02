#!/bin/sh

echo 'ALTABI = "FreeBSD:12.0:amd64"' >> /usr/local/etc/pkg.conf

pkg install -y ca_root_nss git picocom python3 screen u-boot-tools

# Install ports collection.
portsnap fetch
portsnap extract

#------------------------------------------------------------------+
# SQLite3 DATABASE
#------------------------------------------------------------------+

pkg install -y sqlite3

#------------------------------------------------------------------+
# NodeJS/Express SERVER
#------------------------------------------------------------------+

pkg install -y npm

ln -s /vagrant/server /home/vagrant/server

cd /vagrant/server
npm install --no-optional > /dev/null 2>&1

# Launch services.
#screen -dm sudo -u vagrant npm run build ; npm run start
