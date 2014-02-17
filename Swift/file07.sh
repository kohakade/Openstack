#!/bin/bash

echo "[DEFAULT]">>/etc/swift/account-server/1.conf
echo "devices = /srv/1/node">>/etc/swift/account-server/1.conf
echo "mount_check = false">>/etc/swift/account-server/1.conf
echo "bind_port = 6012">>/etc/swift/account-server/1.conf
echo "user = swift">>/etc/swift/account-server/1.conf
echo "log_facility = LOG_LOCAL2">>/etc/swift/account-server/1.conf
echo " ">>/etc/swift/account-server/1.conf
echo "[pipeline:main]">>/etc/swift/account-server/1.conf
echo "pipeline = account-server">>/etc/swift/account-server/1.conf
echo " ">>/etc/swift/account-server/1.conf
echo "[app:account-server]">>/etc/swift/account-server/1.conf
echo "use = egg:swift#account">>/etc/swift/account-server/1.conf
echo " ">>/etc/swift/account-server/1.conf
echo "[account-replicator]">>/etc/swift/account-server/1.conf
echo "vm_test_mode = yes">>/etc/swift/account-server/1.conf
echo " ">>/etc/swift/account-server/1.conf
echo "[account-auditor]">>/etc/swift/account-server/1.conf
echo " ">>/etc/swift/account-server/1.conf
echo "[account-reaper]">>/etc/swift/account-server/1.conf

cd /etc/swift/account-server

sed -e "s/srv\/1/srv\/2/" -e "s/601/602/" -e "s/LOG_LOCAL2/LOG_LOCAL3/" 1.conf | sudo tee -a 2.conf

sed -e "s/srv\/1/srv\/3/" -e "s/601/603/" -e "s/LOG_LOCAL2/LOG_LOCAL4/" 1.conf | sudo tee -a 3.conf

sed -e "s/srv\/1/srv\/4/" -e "s/601/604/" -e "s/LOG_LOCAL2/LOG_LOCAL5/" 1.conf | sudo tee -a 4.conf

cd

exit
