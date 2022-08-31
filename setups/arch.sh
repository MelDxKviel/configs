#!/bin/bash

# Update packages
sudo pacman -Syu

# Install apps
sudo pacman -S bat btop curl dust exa docker docker-compose flatpak htop keepassxc neofetch neovim networkmanager ranger telegram-desktop firefox tmux tree vim zsh okular gparted python python-pip wget

# Install game stuff
read -r -p "Install game stuff? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        sudo pacman -S steam discord
        ;;
    *)
        ;;
esac

# Install python packages
source ./python.sh

# Start common script
source ./common.sh

