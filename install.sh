#!/bin/bash

# Checkout this other projects
git submodule init
git submodule update

# Create symbol links
if [ -L "~/.zshrc" ]; then
	rm -rf ~/.zshrc
	ln -s ~/.dotenv/zshrc ~/.zshrc
fi

if [ -L "~/.autoenv" ]; then
	rm -rf ~/.autoenv
	ln -s ~/.dotenv/autoenv ~/.autoenv
fi

if [ -L "~/.vimrc" ]; then
	rm -rf ~/.vimrc
	ln -s ~/.dotenv/vimrc ~/.vimrc
fi

if [ -L "~/.fonts" ]; then
	rm -rf ~/.gitconfig
	ln -s ~/.dotenv/fonts ~/.fonts
fi

if [ -L "~/.gitconfig" ]; then
	rm -rf ~/.gitconfig
	ln -s ~/.dotenv/gitconfig ~/.gitconfig
fi


# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install GVM
sudo apt-get install curl -y
curl -s get.gvmtool.net | bash
