#!/bin/bash

sudo apt-get update

sudo apt-get install -y swift swift-proxy swift-account swift-container swift-object memcached xfsprogs curl

sudo apt-get -y install ntp

sudo sed -i 's/server ntp.ubuntu.com/server ntp.ubuntu.com\nserver 127.127.1.0\nfudge 127.127.1.0 stratum 10/g' /etc/ntp.conf

sudo service ntp restart

exit
