#!/bin/bash

# URL of the public keys file in your GitHub repo
KEYS_URL="https://raw.githubusercontent.com/wifientist/main/pubkeys"

# Path to the authorized_keys file
AUTHORIZED_KEYS="$HOME/.ssh/authorized_keys"

# Create .ssh directory if it doesn't exist
mkdir -p $HOME/.ssh

# Download the public keys and append them to authorized_keys
curl -s $KEYS_URL >> $AUTHORIZED_KEYS

# Set appropriate permissions
chmod 600 $AUTHORIZED_KEYS

echo "Public keys have been added to $AUTHORIZED_KEYS"
