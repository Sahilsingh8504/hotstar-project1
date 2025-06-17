#!/bin/bash
# Script to install Trivy on an instance

# Install necessary dependencies
sudo apt-get install wget apt-transport-https gnupg lsb-release -y

# Add the Trivy repository key
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null

# Add the Trivy repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list

# Update package lists
sudo apt-get update -y

# Install Trivy
sudo apt-get install trivy -y
