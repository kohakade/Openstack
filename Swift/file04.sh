#!/bin/bash

echo "uid = swift">>/etc/rsyncd.conf
echo "gid = swift">>/etc/rsyncd.conf
echo "log file = /var/log/rsyncd.log">>/etc/rsyncd.conf
echo "pid file = /var/run/rsyncd.pid">>/etc/rsyncd.conf
echo "address = 127.0.0.1">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[account6012]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/1/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/account6012.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[account6022]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/2/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/account6022.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[account6032]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/3/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/account6032.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[account6042]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/4/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/account6042.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[container6011]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/1/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/container6011.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[container6021]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/2/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/container6021.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[container6031]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/3/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/container6031.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[container6041]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/4/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/container6041.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[object6010]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/1/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/object6010.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[object6020]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/2/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/object6020.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[object6030]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/3/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/object6030.lock">>/etc/rsyncd.conf
echo " ">>/etc/rsyncd.conf
echo "[object6040]">>/etc/rsyncd.conf
echo "max connections = 25">>/etc/rsyncd.conf
echo "path = /srv/4/node/">>/etc/rsyncd.conf
echo "read only = false">>/etc/rsyncd.conf
echo "lock file = /var/lock/object6040.lock">>/etc/rsyncd.conf


sudo sed -i 's/=false/=true/' /etc/default/rsync

sudo service rsync start

exit
