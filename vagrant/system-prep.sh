#!/bin/bash
apt-get update
apt-get install -y fluxbox virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 x11-xserver-utils xinit
sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

## Other programs
apt-get install -y git vim htop xterm chromium dos2unix

# Some of my more personal preferred software. Comment it out if you do not like it
apt-get install -y zsh tree tmux curl jq s3cmd vim-nox
# Some libraries I often use
apt-get install -y libwww-perl libjson-perl

chsh vagrant -s /bin/zsh
