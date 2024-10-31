#!/bin/bash

# Create the directory for Neovim if it doesn't exist
mkdir -p ~/.config/nvim

# Create symlinks for Zsh, Neovim, and Git configurations
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

echo "Dotfiles have been symlinked!"

