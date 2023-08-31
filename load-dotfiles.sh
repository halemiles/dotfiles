#!/bin/bash

# i3
cp -r ~/.config/i3 ~/.config/i3-backup
cp -r i3 ~/.config

# Neovim
cp -r ~/.config/nvim ~/.config/nvim-backup
cp -r nvim ~/.config

i3 restart
