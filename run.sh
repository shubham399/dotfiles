#!/bin/bash

# Function to check if a command is installed
check_command_installed() {
    if command -v "$1" >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Function to install Homebrew on macOS
install_homebrew() {
    if ! check_command_installed "brew"; then
        echo "Homebrew not found. Installing..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

# Function to install Python 3.11 on Linux using apt
install_python_linux() {
    if ! check_command_installed "python3.11"; then
        echo "Installing Python 3.11..."
        sudo apt update
        sudo apt install -y python3.11 python3-pip
    else
        echo "Python 3.11 is already installed."
    fi
}

# Function to install Python 3.11 on macOS using Homebrew
install_python_macos() {
    if ! check_command_installed "python3.11"; then
        echo "Installing Python 3.11 using Homebrew..."
        brew install python@3.11
    else
        echo "Python 3.11 is already installed."
    fi
}

check_ansible_installation() {
    if python3 -m ansible playbook --version >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi

}

# Function to install Ansible using pip
install_ansible() {

    if ! check_ansible_installation; then
        echo "Installing Ansible..."
        python3.11 -m pip install ansible
    else
        echo "Ansible is already installed."
    fi
}

# Check if we are on macOS or Linux
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Detected macOS."
    install_homebrew
    install_python_macos

elif [[ "$(uname)" == "Linux" ]]; then
    echo "Detected Linux."
    install_python_linux

else
    echo "Unsupported operating system."
    exit 1
fi

install_ansible

echo "Executing Playbook..."
python3 -m ansible playbook main.yml
