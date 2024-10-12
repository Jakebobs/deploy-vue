#!/bin/bash

# Step 1: Installation of npm
clear
echo "Installing npm..."
sudo apt-get install npm -y

# Step 2: Installation of nodejs
clear
echo "Installing nodejs..."
sudo apt-get install nodejs -y

# Step 3: Display that the installation is complete
clear
echo "Installation complete!"
echo "To verify the installation, run the following commands:"
echo "npm -v"
echo "node -v"
