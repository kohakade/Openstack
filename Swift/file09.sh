#!/bin/bash

echo "[DEFAULT]">>/etc/swift/object-server/1.conf
echo "devices = /srv/1/node">>/etc/swift/object-server/1.conf
echo "mount_check = false">>/etc/swift/object-server/1.conf
echo "bind_port = 6010">>/etc/swift/object-server/1.conf
echo "user = swift">>/etc/swift/object-server/1.conf
echo "log_facility = LOG_LOCAL2">>/etc/swift/object-server/1.conf
echo " ">>/etc/swift/object-server/1.conf
echo "[pipeline:main]">>/etc/swift/object-server/1.conf
echo "pipeline = object-server">>/etc/swift/object-server/1.conf
echo " ">>/etc/swift/object-server/1.conf
echo "[app:object-server]">>/etc/swift/object-server/1.conf
echo "use = egg:swift#object">>/etc/swift/object-server/1.conf
echo " ">>/etc/swift/object-server/1.conf
echo "[object-replicator]">>/etc/swift/object-server/1.conf
echo "vm_test_mode = yes">>/etc/swift/object-server/1.conf
echo " ">>/etc/swift/object-server/1.conf
echo "[object-updater]">>/etc/swift/object-server/1.conf
echo " ">>/etc/swift/object-server/1.conf
echo "[object-auditor]">>/etc/swift/object-server/1.conf

cd /etc/swift/object-server

sed -e "s/srv\/1/srv\/2/" -e "s/601/602/" -e "s/LOG_LOCAL2/LOG_LOCAL3/" 1.conf | sudo tee -a 2.conf

sed -e "s/srv\/1/srv\/3/" -e "s/601/603/" -e "s/LOG_LOCAL2/LOG_LOCAL4/" 1.conf | sudo tee -a 3.conf

sed -e "s/srv\/1/srv\/4/" -e "s/601/604/" -e "s/LOG_LOCAL2/LOG_LOCAL5/" 1.conf | sudo tee -a 4.conf

exit
