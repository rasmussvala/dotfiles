#!/bin/bash

# Check if running on WSL/Ubuntu and install required packages
if grep -q "Microsoft" /proc/version || grep -q "microsoft" /proc/version; then
    echo "WSL detected - Installing required packages..."
    # Update package list
    sudo apt update
    # Install compiler
    sudo apt install -y build-essential 
fi

# Remove existing nvim config directory if it exists
rm -rf ~/.config/nvim

# Create the directory for Neovim
mkdir -p ~/.config/nvim

# Create symlinks for Zsh and Git configurations
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Create symlink for the entire nvim directory
ln -sf ~/dotfiles/nvim/* ~/.config/nvim/

echo "Dotfiles have been symlinked!"
