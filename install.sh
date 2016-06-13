#!/bin/bash

# Checkout this other projects
git submodule init
git submodule update

# Create directories
mkdir -p ~/.local/bin

# Create symbol links
ln -s ~/.dotenv/zshrc ~/.zshrc
ln -s ~/.dotenv/autoenv ~/.autoenv
ln -s ~/.dotenv/vimrc ~/.vimrc
ln -s ~/.dotenv/gitconfig ~/.gitconfig
ln -s ~/.dotenv/tmux.conf ~/.tmux.conf
ln -s ~/.dotenv/xflux ~/.local/bin/xflux
ln -s ~/.dotenv/xflux.desktop ~/.config/autostart/xflux.desktop

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install Oh my ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install ZSH theme
cp -Rvf zsh_themes/bullet-train.zsh-theme ~/.oh-my-zsh/themes/

# Install tmux and TPM
#sudo pacman -S --noconfirm tmux
sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
