#!/bin/bash

# 1. Define the Vault
VAULT="$HOME/dotfiles"

# 2. Copy Configurations
echo "Backup in progress..."
cp -r ~/.config/niri $VAULT/
cp -r ~/.config/waybar $VAULT/
cp -r ~/.config/alacritty $VAULT/
cp -r ~/.config/fuzzel $VAULT/
cp -r ~/.config/mako $VAULT/

# 3. Copy Wallpapers
cp -r ~/Pictures/Wallpapers $VAULT/

# 4. Generate Package List (The "Recipe")
# This saves the names of all programs you installed explicitly
pacman -Qqe > $VAULT/pkglist.txt

echo "Backup Complete! Your brain is saved in ~/dotfiles"
