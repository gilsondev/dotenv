#!/bin/bash

# Create directories
mkdir -p ~/.local/bin

# Install tmux and TPM
if [ -f /etc/debian_version ]; then
	sudo apt-get install -y git
	sudo apt-get install -y tmux zsh direnv
	sudo apt-get update
	sudo apt-get install -y neovim
    sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
elif [ -f /etc/redhat-release ]; then
	sudo dnf install -y tmux zsh neovim direnv
elif [ -f /etc/fedora-release ]; then
	sudo dnf install -y tmux zsh neovim ctags xclip direnv
elif [ -f /etc/arch-release ]; then
	sudo pacman -S --noconfirm tmux zsh neovim
fi

# Checkout this other projects
git submodule init
git submodule update

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install pyenv
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# Install Pyenv Virtualenvwrapper
git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $(pyenv root)/plugins/pyenv-virtualenvwrapper

# Install SDKMAN
curl -s "https://get.sdkman.io" | bash

# Install Oh my ZSH
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install ZSH theme
cp -Rvf zsh_themes/bullet-train.zsh-theme ~/.oh-my-zsh/themes/

# Install ZSH Syntax Highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting

# Install ZSH Auto Suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

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
ln -s ~/.dotenv/docker-compose_zsh ~/.oh-my-zsh/plugins/docker-compose_zsh
ln -s ~/.dotenv/dracula_zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
ln -s ~/.dotenv/redshift.conf ~/.config
ln -s ~/.dotenv/nvim ~/.config
ln -s ~/.dotenv/ideavimrc ~/.ideavimrc

# Tmux Plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Plug Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Powerline
pip install --user git+git://github.com/powerline/powerline

# Install SpringBoot CLI
sdk install springboot | zsh
