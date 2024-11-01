#!/bin/bash

# Remove existing nvim config directory if it exists
rm -rf ~/.config/nvim

# Create the directory for Neovim
mkdir -p ~/.config/nvim

# Create a symlink for the nvim directory
ln -sf ~/dotfiles/nvim/* ~/.config/nvim/

echo "Dotfiles have been symlinked!"
