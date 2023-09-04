#!/bin/bash

echo "Loading dotfiles"

echo "Copying i3 configs..."
# i3
cp -r ~/.config/i3 ~/.config/i3-backup
cp -r i3 ~/.config

echo "Copying polybar configs..."
# i3
cp -r ~/.config/polybar ~/.config/polybar-backup
cp -r polybar ~/.config

echo "Copying nvim configs..."
# Neovim
cp -r ~/.config/nvim ~/.config/nvim-backup
cp -r nvim ~/.config

echo "Copying wallpaper..."
# Wallpaper
cp wallpaper/wallpaper.jpeg ~/Pictures/Wallpaper

echo "Restarting i3..."
i3 restart

echo "Finished loading dotfiles"
