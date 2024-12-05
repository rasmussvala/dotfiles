#!/bin/bash

# Remove existing config directories if they exists
rm -rf ~/.config/nvim
rm -rf ~/.config/kitty

# Create directories
mkdir -p ~/.config/nvim
mkdir -p ~/.config/kitty

# Create symlink
ln -sf ~/dotfiles/kitty/* ~/.config/kitty/
ln -sf ~/dotfiles/nvim/* ~/.config/nvim/

echo "Dotfiles have been symlinked!"

