#!/bin/bash

# Step 1: Update the system
echo "Updating system..."
sudo yum update -y

# Step 2: Install yum-utils package
echo "Installing yum-utils..."
sudo yum install -y yum-utils

# Step 3: Add Docker’s official repository
echo "Adding Docker repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Step 4: Install Docker CE and related packages
echo "Installing Docker CE..."
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Step 5: Install Docker Compose
echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Step 6: Apply executable permissions for Docker Compose
echo "Applying executable permissions for Docker Compose..."
sudo chmod +x /usr/local/bin/docker-compose

# Step 7: Verify Docker Compose installation
echo "Verifying Docker Compose installation..."
docker-compose --version

# Step 8: Enable and start Docker service
echo "Enabling and starting Docker service..."
sudo systemctl enable docker
sudo systemctl status docker
