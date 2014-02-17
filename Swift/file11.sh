#!/bin/bash

sudo service swift-account restart
sudo service swift-object restart
sudo service swift-container restart
sudo service swift-proxy restart

exit
