#!/bin/bash

echo "[DEFAULT]">>/etc/swift/proxy-server.conf
echo "bind_port = 8080">>/etc/swift/proxy-server.conf
echo "user = swift">>/etc/swift/proxy-server.conf
echo "log_facility = LOG_LOCAL1">>/etc/swift/proxy-server.conf
echo " ">>/etc/swift/proxy-server.conf
echo "[pipeline:main]">>/etc/swift/proxy-server.conf
echo "pipeline = healthcheck cache tempauth proxy-server">>/etc/swift/proxy-server.conf
echo " ">>/etc/swift/proxy-server.conf
echo "[app:proxy-server]">>/etc/swift/proxy-server.conf
echo "use = egg:swift#proxy">>/etc/swift/proxy-server.conf
echo "allow_account_management = true">>/etc/swift/proxy-server.conf
echo "account_autocreate = true">>/etc/swift/proxy-server.conf
echo " ">>/etc/swift/proxy-server.conf
echo "[filter:tempauth]">>/etc/swift/proxy-server.conf
echo "use = egg:swift#tempauth">>/etc/swift/proxy-server.conf
echo "user_admin_admin = admin .admin .reseller_admin">>/etc/swift/proxy-server.conf
echo "user_test_tester = testing .admin">>/etc/swift/proxy-server.conf
echo " ">>/etc/swift/proxy-server.conf
echo "[filter:healthcheck]">>/etc/swift/proxy-server.conf
echo "use = egg:swift#healthcheck">>/etc/swift/proxy-server.conf
echo " ">>/etc/swift/proxy-server.conf
echo "[filter:cache]">>/etc/swift/proxy-server.conf
echo "use = egg:swift#memcache">>/etc/swift/proxy-server.conf

exit
