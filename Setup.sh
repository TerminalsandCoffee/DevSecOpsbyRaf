#!/bin/bash

# Step 1: Update your system
echo "Updating system..."
sudo yum update -y

# Step 2: Install yum-utils package
echo "Installing yum-utils package..."
sudo yum install -y yum-utils

# Step 3: Add Docker’s official repository
echo "Adding Docker official repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Step 4: Install Docker CE, CLI, and containerd
echo "Installing Docker CE, CLI, and containerd..."
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Step 5: Download Docker Compose
echo "Downloading Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Step 6: Apply executable permissions to Docker Compose
echo "Applying executable permissions to Docker Compose..."
sudo chmod +x /usr/local/bin/docker-compose

# Step 7: Verify Docker Compose installation
echo "Verifying Docker Compose installation..."
docker-compose --version

# Step 8: Enable and start Docker service
echo "Enabling Docker service..."
sudo systemctl enable docker

echo "Starting Docker service..."
sudo systemctl start docker

# Step 9: Verify Docker service is running
echo "Checking Docker service status..."
sudo systemctl status docker

echo "Docker CE and Docker Compose have been installed successfully!"
