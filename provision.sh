#!/bin/bash

# Update the sources list
sudo apt-get update -y

# upgrade any packages available
# sudo apt-get upgrade -y

# install git
sudo apt-get install git -y
#
# # install nodejs
# sudo apt-get install python-software-properties -y
# curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
# sudo apt-get install nodejs -y
#
# # install pm2
# sudo npm install pm2 -g
#
# sudo apt-get install nginx -y
#
# # remove the old file and add our one
# sudo rm /etc/nginx/sites-available/default
# sudo cp /home/ubuntu/environment/nginx.default /etc/nginx/sites-available/default
#
# # finally, restart the nginx service so the new config takes hold
# sudo service nginx restart
echo "Installing git-ftp"
sudo apt-get -y install git-ftp

echo "Installing default-java"
sudo apt-get -y install default-jre
sudo apt-get -y install default-jdk

echo "Installing Jenkins"
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install jenkins -y

# echo "Replacing Jenkins file"
# sudo rm /etc/default/jenkins
# sudo cp /home/ubuntu/environment/jenkins /etc/default/jenkins
sudo service jenkins start

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
