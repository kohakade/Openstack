#!/bin/bash

echo "[DEFAULT]">>/etc/swift/container-server/1.conf
echo "devices = /srv/1/node">>/etc/swift/container-server/1.conf
echo "mount_check = false">>/etc/swift/container-server/1.conf
echo "bind_port = 6011">>/etc/swift/container-server/1.conf
echo "user = swift">>/etc/swift/container-server/1.conf
echo "log_facility = LOG_LOCAL2">>/etc/swift/container-server/1.conf
echo " ">>/etc/swift/container-server/1.conf
echo "[pipeline:main]">>/etc/swift/container-server/1.conf
echo "pipeline = container-server">>/etc/swift/container-server/1.conf
echo " ">>/etc/swift/container-server/1.conf
echo "[app:container-server]">>/etc/swift/container-server/1.conf
echo "use = egg:swift#container">>/etc/swift/container-server/1.conf
echo " ">>/etc/swift/container-server/1.conf
echo "[account-replicator]">>/etc/swift/container-server/1.conf
echo "vm_test_mode = yes">>/etc/swift/container-server/1.conf
echo " ">>/etc/swift/container-server/1.conf
echo "[account-updater]">>/etc/swift/container-server/1.conf
echo " ">>/etc/swift/container-server/1.conf
echo "[account-auditor]">>/etc/swift/container-server/1.conf
echo " ">>/etc/swift/container-server/1.conf
echo "[account-sync]">>/etc/swift/container-server/1.conf

cd /etc/swift/container-server

sed -e "s/srv\/1/srv\/2/" -e "s/601/602/" -e "s/LOG_LOCAL2/LOG_LOCAL3/" 1.conf | sudo tee -a 2.conf

sed -e "s/srv\/1/srv\/3/" -e "s/601/603/" -e "s/LOG_LOCAL2/LOG_LOCAL4/" 1.conf | sudo tee -a 3.conf

sed -e "s/srv\/1/srv\/4/" -e "s/601/604/" -e "s/LOG_LOCAL2/LOG_LOCAL5/" 1.conf | sudo tee -a 4.conf

exit
