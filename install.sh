#!/bin/bash

# Checkout this other projects
git submodule init
git submodule update

# Create symbol links
ln -s ~/.dotenv/zshrc ~/.zshrc
ln -s ~/.dotenv/autoenv ~/.autoenv
ln -s ~/.dotenv/vimrc ~/.vimrc
ln -s ~/.dotenv/fonts ~/.fonts
ln -s ~/.dotenv/gitconfig ~/.gitconfig
