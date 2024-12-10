#!/bin/bash

# Remove existing config directories if they exists
rm -rf ~/.config/nvim
rm -rf ~/.config/kitty
rm -rf ~/.config/colorls

# Create directories
mkdir -p ~/.config/nvim
mkdir -p ~/.config/kitty
mkdir -p ~/.config/colorls

# Create symlink
ln -sf ~/dotfiles/kitty/* ~/.config/kitty/
ln -sf ~/dotfiles/nvim/* ~/.config/nvim/
ln -sf ~/dotfiles/colorls/* ~/.config/colorls/

echo "Dotfiles have been symlinked!"

