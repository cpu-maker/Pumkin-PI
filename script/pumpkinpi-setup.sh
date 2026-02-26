#!/bin/bash

echo "🎃 Installing PumpkinPi Core..."

# Update system
sudo dnf update -y

# Remove GNOME (optional, dangerous if misused)
# sudo dnf remove gnome-shell -y

# Install development tools
sudo dnf groupinstall "Development Tools" -y

# Install GTK for C UI
sudo dnf install gtk3-devel -y

# Create Pumpkin directories
sudo mkdir -p /usr/share/pumpkinpi
sudo mkdir -p /usr/share/pumpkinpi/themes
sudo mkdir -p /usr/share/pumpkinpi/widgets

echo "🎃 PumpkinPi base structure created."

echo "Next step:"
echo "Compile pumpkin-shell and copy to /usr/bin/"
