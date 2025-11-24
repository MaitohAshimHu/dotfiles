# 🖥️ Niri Cyberdeck Configuration

> A keyboard-centric, infinite-scrolling workspace built on **EndeavourOS**. Optimized for cybersecurity, development, and NVIDIA GPUs.

## ⚡ Features
* **Window Manager:** [Niri](https://github.com/YaLTeR/niri) (Scrollable Tiling Wayland Compositor).
* **Terminal:** Alacritty (GPU accelerated, transparent).
* **Bar:** Waybar (Custom "Hacker" theme with NVIDIA GPU monitoring).
* **Launcher:** Fuzzel.
* **Aesthetic:** Dark, neon accents, minimal mouse usage.

## 📥 Installation

Tested on **EndeavourOS** (Arch Linux).

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/MaitohAshimHu/dotfiles.git](https://github.com/MaitohAshimHu/dotfiles.git)
   cd dotfiles

2. Run the installer: This script installs necessary packages (Niri, Waybar, Fonts) and links the config files.
Bash

    chmod +x install.sh
    ./install.sh

3. Reboot: Select Niri at the login screen.

🎮 Keybindings

Modifier Key: Super (Windows Key)
Action	Keybinding
Open Terminal	Win + Enter
App Launcher	Win + D
Close Window	Win + Q
Lock Screen	Win + Esc


Navigation

Action	Keybinding
Scroll Left/Right	Win + Left / Right (or Mouse Wheel)
Move Window	Win + Ctrl + Left / Right
Resize Width	Win + Minus / Super + Equal


Vertical Stacking (Advanced)

Niri is column-based, but you can stack windows vertically:
Action	Keybinding
Stack Window Down	Win + [ (Left Bracket)
Un-stack Window	Win + ] (Right Bracket)
Resize Height	Win + Shift + Minus / Equal



🔧 Hardware Notes

    NVIDIA GPUs: Configuration includes nvidia_drm.modeset=1 fixes and a custom Waybar module for GPU usage tracking.

    Networking: Includes network-manager-applet for GUI Wi-Fi management.
