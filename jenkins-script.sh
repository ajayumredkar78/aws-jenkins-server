#!/bin/bash
# Update package list
sudo apt-get update -y
# Install Java (Jenkins requires Java to run)
sudo apt-get install -y openjdk-11-jdk
# Add the Jenkins repository and key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# Update package list again
sudo apt-get update -y
# Install Jenkins
sudo apt-get install -y jenkins
# Start Jenkins service
sudo systemctl start jenkins
# Enable Jenkins service to start on boot
sudo systemctl enable jenkins
# Print the initial admin password
echo "Jenkins installation is complete."
echo "You can access Jenkins at: http://<your-server-ip>:8080"
echo "The initial admin password is located at: /var/lib/jenkins/secrets/initialAdminPassword"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
