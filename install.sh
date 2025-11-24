#!/bin/bash

# 1. Install all your tools from the list
echo "Installing Arsenal..."
sudo pacman -S --needed - < pkglist.txt

# 2. Restore Configurations
echo "Restoring Brain..."
mkdir -p ~/.config
cp -r niri ~/.config/
cp -r waybar ~/.config/
cp -r alacritty ~/.config/
cp -r fuzzel ~/.config/
cp -r mako ~/.config/

# 3. Restore Wallpapers
mkdir -p ~/Pictures
cp -r Wallpapers ~/Pictures/

# 4. Set Permissions
chmod +x ~/.config/niri/config.kdl

echo "System Restored. Rebooting recommended."
