#!/bin/bash
# Script to grant execute permissions to all shell scripts in the current directory
#chmod +x jenkins.sh awscli.sh trivy.sh terraform.sh kubectl.sh eksctl.sh prometheus.sh grafana.sh

echo "Making all .sh files executable..."
chmod +x *.sh

echo "Permissions updated successfully!"
