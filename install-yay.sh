#!/bin/bash

# --- Arch Linux Yay AUR Helper Installer ---
# Created by: cinar557
# Description: Automates the installation of the Yay AUR helper on Arch Linux.

set -e # Stop the script if any command fails

echo "🚀 Starting Yay Installer..."

# 1. Install required dependencies (base-devel and git)
echo "📦 Installing dependencies..."
sudo pacman -S --needed base-devel git --noconfirm

# 2. Clone the Yay repository to a temporary directory
echo "📂 Cloning Yay from AUR..."
cd /tmp
git clone https://aur.archlinux.org/yay.git

# 3. Enter the directory
cd yay

# 4. Build and install the package
echo "🛠️ Building and installing Yay (this may take a moment)..."
makepkg -si --noconfirm

# 5. Clean up temporary files
echo "🧹 Cleaning up temporary build files..."
cd ..
rm -rf yay

echo "✅ Success! Yay is now installed and ready to use."
echo "💡 Usage: yay -S <package_name>"
