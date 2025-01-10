#!/bin/bash

# Author: Devops Gad ndayishimiye
# Date: January/2025
# Version: v1
# Script to install AWS CLI Version 2 on Ubuntu 20.04

set -e

# Define the download URL for AWS CLI
AWS_CLI_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"

# Step 1: Update system packages
echo "Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

# Step 2: Install required dependencies
echo "Installing required dependencies..."
sudo apt install -y unzip curl

# Step 3: Download AWS CLI
echo "Downloading AWS CLI Version 2..."
curl -s "$AWS_CLI_URL" -o "awscliv2.zip"

# Step 4: Extract the downloaded zip file
echo "Extracting AWS CLI package..."
unzip -q awscliv2.zip

# Step 5: Install AWS CLI
echo "Installing AWS CLI..."
sudo ./aws/install

# Step 6: Verify the installation
echo "Verifying AWS CLI installation..."
aws --version

if [ $? -eq 0 ]; then
    echo "AWS CLI Version 2 installed successfully."
else
    echo "AWS CLI installation failed."
    exit 1
fi

# Step 7: Clean up temporary files
echo "Cleaning up..."
rm -rf aws awscliv2.zip

echo "Installation complete!"
