#!/bin/bash

# This PAT only has access to the repository that contains the tutorial content
git clone https://miljon3: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@github.com/miljon3/porkchop.io.git

# Configure git user details
git config user.email "Tutorial@example.com"
git config user.name "Tutorial Taker"

# Remove all files from the cloned repository
cd porkchop.io
rm -rf *

cd..

sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Installation complete!"
