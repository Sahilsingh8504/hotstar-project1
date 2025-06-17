#!/bin/bash
# Script to install Grafana on a Linux instance

# Update package list and install dependencies
sudo apt-get install -y apt-transport-https software-properties-common wget

# Create a directory for Grafana's GPG key
sudo mkdir -p /etc/apt/keyrings/

# Add Grafana's GPG key
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

# Add Grafana's repository to the sources list
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

# Update package lists
sudo apt-get update -y

# Install the latest OSS release of Grafana
sudo apt-get install grafana -y

# Start and enable Grafana service
sudo systemctl start grafana-server
sudo systemctl enable grafana-server


#After installation, you can access Grafana at:
# http://your-server-ip:3000 (default user: admin, password: admin)
