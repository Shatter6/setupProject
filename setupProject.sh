#!/bin/bash

# Prompt for the root directory name
read -p "Enter the name of the root directory: " rootDir

# Function to check if a command exists
command_exists () {
    type "$1" &> /dev/null ;
}

# Check if Node.js and npm are installed
if command_exists node && command_exists npm; then
    echo "Node.js and npm found."
else
    echo "Node.js and npm are required but not installed. Please install them first."
    exit 1
fi

# Create the root directory
mkdir "$rootDir"

# Navigate into the root directory
cd "$rootDir"

# Create subdirectories
mkdir server public src node_modules

# Create subdirectories within 'server'
mkdir server/functions

# Create subdirectories within 'public'
mkdir public/css public/js public/images

# Create subdirectories within 'src'
mkdir src/components src/views

# Install http-server globally if not already installed
if command_exists http-server; then
    echo "http-server is already installed."
else
    echo "Installing http-server..."
    npm install -g http-server
fi

# Check for OpenSSL
if command_exists openssl; then
    echo "OpenSSL found."

    # Ask if user wants to create SSL certificates
    read -p "Do you want to create SSL certificates now? (y/n): " answer
    if [[ "$answer" == "y" ]]; then
        openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes
        echo "SSL certificates created."
    fi
else
    echo "OpenSSL not found. Please install OpenSSL to create SSL certificates."
    exit 1
fi

# Navigate back to the starting directory
cd ..

echo "Folder structure for $rootDir created successfully."
echo "You can now navigate to $rootDir and start http-server."
