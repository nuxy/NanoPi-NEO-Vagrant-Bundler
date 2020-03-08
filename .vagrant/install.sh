#!/bin/sh

echo 'ALTABI = "FreeBSD:12.0:amd64"' >> /usr/local/etc/pkg.conf

#------------------------------------------------------------------+
# SQLite3 DATABASE
#------------------------------------------------------------------+

pkg install -y sqlite3

#------------------------------------------------------------------+
# NodeJS SERVER
#------------------------------------------------------------------+

pkg install -y npm

cd /vagrant/server
npm install --python='/usr/local/bin/python2.7' > /dev/null 2>&1

ln -s /vagrant/server /home/vagrant/server

# Launch services.
sudo -u vagrant npm run build
sudo -u vagrant npm run start
