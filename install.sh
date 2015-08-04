#!/bin/bash

# Checkout this other projects
git submodule init
git submodule update

# Create symbol links
ln -s ~/.dotenv/zshrc ~/.zshrc
ln -s ~/.dotenv/autoenv ~/.autoenv
ln -s ~/.dotenv/vimrc ~/.vimrc
ln -s ~/.dotenv/gitconfig ~/.gitconfig
ln -s ~/.dotenv/tmux.conf ~/.tmux.conf

# Install Oh my ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install GVM
sudo apt-get install curl -y
curl -s get.gvmtool.net | bash

# Install ZSH Theme
wget http://raw.github.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme ~/.oh-my-zsh/themes/

