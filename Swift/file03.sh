#!/bin/bash

sudo fdisk /dev/sdb

sudo partprobe

sudo mkfs.xfs -i size=1024 /dev/sdb1

sudo mkdir /mnt/sdb1

echo "/dev/sdb1 /mnt/sdb1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0">>/etc/fstab

sudo mount /dev/sdb1

sudo mkdir /mnt/sdb1/{1..4}

sudo chown swift:swift /mnt/sdb1/*

sudo ln -s /mnt/sdb1/{1..4} /srv

sudo mkdir -p /etc/swift/{object-server,container-server,account-server}

for S in {1..4}; do sudo mkdir -p /srv/${S}/node/sdb${S}; done

sudo mkdir -p /var/run/swift

sudo chown -R swift:swift /etc/swift /srv/{1..4}/

sudo sed -i 's/exit 0/ /g' /etc/rc.local
sudo echo "mkdir -p /var/run/swift">>/etc/rc.local
sudo echo "chown swift:swift /var/run/swift">>/etc/rc.local
sudo echo "exit 0">>/etc/rc.local

exit
