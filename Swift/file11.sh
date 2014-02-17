#!/bin/bash

sudo service swift-account stop
sudo service swift-object stop
sudo service swift-container stop
sudo service swift-proxy stop

sudo service swift-account start
sudo service swift-object start
sudo service swift-container start
sudo service swift-proxy start

exit
