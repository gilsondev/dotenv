#!/bin/bash

# Checkout this other projects
git submodule init
git submodule update

# Create symbol links
ln -s ~/.dotenv/zshrc ~/.zshrc
ln -s ~/.dotenv/autoenv ~/.autoenv
ln -s ~/.dotenv/vimrc ~/.vimrc
ln -s ~/.dotenv/gitconfig ~/.gitconfig

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install GVM
sudo apt-get install curl -y
curl -s get.gvmtool.net | bash
