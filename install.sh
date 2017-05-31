#!/bin/bash

# Checkout this other projects
git submodule init
git submodule update

# Create directories
mkdir -p ~/.local/bin

# Install tmux and TPM
if [ -f /etc/debian_version ]; then
	sudo apt-get install tmux zsh vim vim-gnome
elif [ -f /etc/redhat-release ]; then
	sudo dnf install tmux zsh vim vim-X11
elif [ -f /etc/fedora-release ]; then
	sudo dnf install tmux zsh vim vim-X11
elif [ -f /etc/arch-release ]; then
	sudo pacman -S --noconfirm tmux zsh vim
fi

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install Oh my ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install ZSH theme
cp -Rvf zsh_themes/bullet-train.zsh-theme ~/.oh-my-zsh/themes/

# Install ZSH Syntax Highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting

# Create symbol links
rm -rf ~/.zshrc
rm -rf ~/.tmux.conf
ln -s ~/.dotenv/zshrc ~/.zshrc
ln -s ~/.dotenv/autoenv ~/.autoenv
ln -s ~/.dotenv/vimrc ~/.vimrc
ln -s ~/.dotenv/gitconfig ~/.gitconfig
ln -s ~/.dotenv/tmux.conf ~/.tmux.conf
ln -s ~/.dotenv/xflux ~/.local/bin/xflux
ln -s ~/.dotenv/xflux.desktop ~/.config/autostart/xflux.desktop
ln -s ~/.dotenv/zsh-wakatime ~/.oh-my-zsh/custom/plugins/zsh-wakatime
ln -s ~/.dotenv/docker-compose_zsh ~/.oh-my-zsh/plugins/docker-compose_zsh
ln -s ~/.dotenv/dracula_zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

# Tmux Plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Jenv
git clone https://github.com/gcuisinier/jenv.git ~/.jenv

# Plug Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install i3WM Settings
ln -s ~/.dotenv/i3 ~/.i3
ln -s ~/.dotenv/screenlayout ~/.screenlayout
