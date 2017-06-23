#!/bin/sh

# [Latest ChefDK Downloads](https://downloads.chef.io/chefdk)
# [Docker-Machine](https://github.com/docker/machine/releases)

# Install chefdk and bits and bobs, then install docker-machine
echo CHEFDK
sudo yum install -y https://packages.chef.io/files/stable/chefdk/1.4.3/el/7/chefdk-1.4.3-1.el7.x86_64.rpm
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
source ~/.bash_profile
sudo yum groupinstall "Development Tools" nano -y 
gem install kitchen-azurerm

echo DOCKER-MACHINE
curl -L https://github.com/docker/machine/releases/download/v0.12.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
chmod +x /tmp/docker-machine &&
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

echo AZURE-CLI
sudo yum install -y gcc libffi-devel python-devel openssl-devel
sudo curl -L https://aka.ms/InstallAzureCli | bash

echo TIDYUP
sudo yum clean all
echo Run this to set bash profile
echo source ~/.bash_profile

echo CHECK RUBY IS CORRECT
which ruby
which gem

#NONE OF THIS WORKS
#------------------
#echo DOCKER (for client tools)
#sudo yum install -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
#sudo yum -y install docker-io
#sudo service docker start
#sudo chkconfig docker on

#sudo yum install -y yum-utils device-mapper-persistent-data lvm2
#sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#sudo yum install -y docker-ce
