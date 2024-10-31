#!/bin/bash

# Create the directory for Neovim if it doesn't exist
mkdir -p ~/.config/nvim

# Create symlinks for zsh, neovim and git
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

echo "Dotfiles have been symlinked!"
