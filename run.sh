#!/bin/bash

check_command_installed() {
    if command -v $1 >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Function to check if Homebrew is installed
check_homebrew_installed() {
    check_command_installed "brew"
}

# Check if we are on macOS
if [[ "$(uname)" == "Darwin" ]]; then
    if check_homebrew_installed; then
        echo "Homebrew is already installed."
    else
        echo "Homebrew not found. Installing..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
fi

python3 -m ansible playbook main.yml
