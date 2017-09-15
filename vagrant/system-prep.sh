#!/bin/bash
apt-get update
apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 x11-xserver-utils xinit
sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

## Other programs
apt-get install -y git vim htop chromium dos2unix

# Some of my more personal preferred software. Comment it out if you do not like it
apt-get install -y zsh tree curl jq s3cmd vim-nox awscli

chsh vagrant -s /bin/zsh
