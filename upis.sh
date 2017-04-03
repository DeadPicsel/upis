#!/bin/bash

echo Ubuntu Post Installation Script by Danny Williamson

# Make Directories
mkdir ~/Apps
mkdir ~/Apps/Linux
mkdir ~/Apps/Windows
mkdir ~/Pictures/Wallpapers
mkdir ~/VPN

# Add 3rd Party Repositories Keys
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
wget -q -O - http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc | sudo apt-key add -


# Add 3rd Party Repositories
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian yakkety non-free contrib" >> /etc/apt/sources.list.d/virtualbox.org.list' 

# Basic Update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade
sudo apt-get -y --force-yes dist-upgrade

# Accessories Applications
sudo apt-get install -y gedit
sudo apt-get install -y unrar

# Graphics Applications
sudo apt-get install -y gimp

# Internet Applications
sudo apt-get install -y google-chrome-stable
sudo apt-get install -y deluge
sudo apt-get install -y filezilla


# Multimedia Applications
sudo apt-get install -y audacious
sudo apt-get install -y vlc

# System Applications
sudo apt-get install -y wine

# Virtualbox
sudo apt-get install -y virtualbox
sudo adduser x vboxusers

# VPN Setup
wget -P ~/VPN https://btguard.com/btguard.ca.crt
sudo apt-get install -y network-manager-openvpn-gnome
sudo apt-get install -y network-manager-openvpn

# User Input Needed
sudo apt-get install -y ubuntu-restricted-extras

# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
reboot



