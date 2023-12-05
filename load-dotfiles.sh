#!/bin/bash

echo "Loading dotfiles"

echo "Copying i3 configs..."
# i3
cp -r ~/.config/i3 ~/.config/i3-backup
cp -r i3 ~/.config

echo "Copying polybar configs..."
# polybar
cp -r ~/.config/polybar/* ~/.config/polybar-backup
cp -r polybar ~/.config

echo "Copying nvim configs..."
# Neovim
cp -r ~/.config/nvim ~/.config/nvim-backup
cp -r nvim ~/.config

echo "Copying wallpaper..."
# Wallpaper
cp wallpaper/wallpaper.jpeg ~/Pictures/Wallpaper

echo "Copying organize..."
# Organize
cp -r organize ~/.config

echo "Copying zshrc..."
# zshrc
cp .zshrc ~/.zshrc

echo "Copying tabby..."
# Tabby
cp tabby-client/agent/config.toml ~/.tabby-client/agent


# if optional variable called --i3 is passed, then we will restart i3
if [ "$1" == "--i3" ]; then
    echo "Stopping polybar instances"
    sudo killall polybar

    echo "Restarting i3..."
    i3 restart
fi

echo "Finished loading dotfiles"
