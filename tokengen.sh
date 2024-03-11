#!/bin/bash

# Generate a 256-character random token
token=$(openssl rand -base64 192 | tr -d '\n' | tr -dc 'A-Za-z0-9' | cut -c -256)

# Print the token
echo "$token"
