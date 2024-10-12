#!/bin/bash

# This PAT only has access to the repository that contains the tutorial content
sudo snap install gh
gh auth login

sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installation complete!"
