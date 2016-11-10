#!/bin/bash
# Configure vagrant user environment


whoami
# Install my personal dotfiles. Take it or leave it.
git clone https://github.com/mgla/dotfiles /home/vagrant/dotfiles && /home/vagrant/dotfiles/deploy

# Install .xinitrc from vagrant-desktop sync.
ln -s /home/vagrant/vagrant-desktop/vagrant/xinitrc /home/vagrant/.xinitrc
