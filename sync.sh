#!/bin/bash

DEST=~/Downloads/dotfiles/dotfiles

# Create destination directory if it doesn't exist
mkdir -p "$DEST"

# Config folders to backup
CONFIG_DIRS=(
  hypr
  waybar
  waypaper
  alacritty
  rofi
  nvim
  zed
  fastfetch
  nwg-look
  tmux
  fish
  vim
)

for dir in "${CONFIG_DIRS[@]}"; do
  cp -r ~/.config/$dir "$DEST/"
done

# Shell config files
cp ~/.bashrc ~/Downloads/dotfiles/
cp ~/.zshrc ~/Downloads/dotfiles/
