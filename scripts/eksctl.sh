#!/bin/bash
# Script to install eksctl on an instance

# Download and extract the latest eksctl binary
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

# Move eksctl to /usr/local/bin to make it executable from anywhere
sudo mv /tmp/eksctl /usr/local/bin

# Verify installation
kubectl version --client
