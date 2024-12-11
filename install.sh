#!/bin/bash

# Check if running with sudo
if [ "$EUID" -ne 0 ]; then 
    echo "Please run with sudo"
    exit 1
fi

# Copy the script to /usr/local/bin
cp record_terminal.sh /usr/local/bin/record
chmod 755 /usr/local/bin/record

echo "Installation complete. You can now use 'record' command from anywhere."
