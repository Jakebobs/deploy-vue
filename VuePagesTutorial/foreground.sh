#!/bin/bash

git clone https://github.com/miljon3/porkchop.io.git

git config user.email "Tutorial@example.com"
git config user.name "Tutorial Taker"

sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installation complete!"
