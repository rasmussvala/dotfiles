#!/bin/bash

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
