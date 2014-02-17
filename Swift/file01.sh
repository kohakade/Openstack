#!/bin/bash

sudo echo "# Public Interface">>/etc/network/interfaces
sudo echo "auto eth1">>/etc/network/interfaces
sudo echo "iface eth1 inet static">>/etc/network/interfaces
sudo echo "	address 172.16.0.2">>/etc/network/interfaces
sudo echo "	netmask 255.255.0.0">>/etc/network/interfaces
sudo echo "	network 172.16.0.0">>/etc/network/interfaces
sudo echo "	broadcast 172.16.255.255">>/etc/network/interfaces
sudo ifup eth1
exit
