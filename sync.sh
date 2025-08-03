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
  zed
  fastfetch
  nwg-look
  tmux
  fish
)

for dir in "${CONFIG_DIRS[@]}"; do
  rsync -a --exclude='.git' ~/.config/$dir/ "$DEST/$dir/"
done

# Shell config files
cp ~/.bashrc ~/Downloads/dotfiles/
