#!/bin/bash
sudo apt-get update
sudo snap install gh
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
sleep 3



echo "Installation complete!"