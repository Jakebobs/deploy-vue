#!/bin/bash

git clone https://miljon3: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@github.com/miljon3/porkchop.io.git

# Configure git user details
git config user.email "Tutorial@example.com"
git config user.name "Tutorial Taker"

# Remove all files from the cloned repository
cd porkchop.io
rm -rf *

sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installation complete!"
