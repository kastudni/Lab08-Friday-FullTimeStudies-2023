#!/bin/bash

# Vitalii Yuzvak

echo "Automatic system and application updates"

#!/bin/bash

# Check which package manager is available
if command -v yum &> /dev/null; then
    # If use yum package manager
    package_manager="yum"
elif command -v apt-get &> /dev/null; then
    # If use apt-get package manager
    package_manager="apt-get"
elif command -v dnf &> /dev/null; then
    # If use dnf package manager
    package_manager="dnf"
else
    echo "Unsupported distribution"
    exit 1
fi

# Set the update interval in seconds (default: 1 hour)
update_interval=${1:-3600}

echo "Starting automatic system and applications update (every $update_interval seconds)..."

while true
do
    # Update system packages
    sudo $package_manager update -y

    # Update flatpak packages (if installed)
    flatpak update -y

    # Update snap packages (if installed)
    if command -v snap &> /dev/null; then
        sudo snap refresh
    fi

    # Sleep for the update interval
    sleep $update_interval
done
