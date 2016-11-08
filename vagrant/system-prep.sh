#!/bin/bash

sudo apt-get install -y fluxbox virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 x11-xserver-utils xinit
sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config
ln -s /home/vagrant/vagrant-desktop/vagrant/xinitrc /home/vagrant/.xinitrc

## Other programs
sudo apt-get install -y git vim htop

# Some of my more personal stuff. Comment it out if you do not like it
sudo apt-get install -y zsh tree tmux curl
pushd /home/vagrant
git clone https://github.com/mgla/dotfiles && sudo -u vagrant ./dotfiles/deploy
popd
sudo chsh vagrant -s /bin/zsh
