#!/bin/bash

# Set passwordless sudo
echo "vagrant" |sudo -S  bash -c 'echo "vagrant ALL=NOPASSWD:ALL" >> /etc/sudoers.d/vagrant'

sudo apt-get update
sudo apt-get -y -q install linux-headers-$(uname -r) dkms build-essential
sudo apt-get install openssh-server
