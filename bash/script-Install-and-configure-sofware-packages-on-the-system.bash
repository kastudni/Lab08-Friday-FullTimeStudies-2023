#!/bin/bash

# Dmytro Poliakov

echo "Script 21: Install and configure software packages on the system"

# Check which package manager is available
if command -v yum &> /dev/null; then
  # If using yum package manager
  package_manager="yum"
elif command -v apt-get &> /dev/null; then
  # If using apt-get package manager
  package_manager="apt-get"
elif command -v dnf &> /dev/null; then
  # If using dnf package manager
  package_manager="dnf"
else
  echo "Unsupported distribution"
  exit 1
fi

# Update system and install software packages
echo "Performing automatic system and application updates..."
sudo $package_manager update -y
sudo $package_manager upgrade -y

# Install additional software packages
echo "Installing required software packages..."
sudo $package_manager install -y package1 package2 package3

# Configure software packages
echo "Configuring installed software packages..."

# Additional configuration steps here...

echo "Software packages installation and configuration completed."
