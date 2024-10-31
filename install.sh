#!/bin/bash

# Create the directory for Neovim if it doesn't exist
mkdir -p ~/.config/nvim

# Create symlinks for Zsh configuration
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Optional: Create a symlink for Windows Terminal settings (if applicable)
# Note: You can manually copy the settings file later
# mkdir -p ~/dotfiles/windows_terminal
# cp "C:\Users\<YourUsername>\AppData\Local\Packages\Microsoft.WindowsTerminal_<some_hash>\LocalState\settings.json" ~/dotfiles/windows_terminal/settings.json

echo "Dotfiles have been symlinked!"
