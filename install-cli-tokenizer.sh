#!/bin/bash

# Create ~/bin directory if it doesn't exist
mkdir -p ~/bin

# Download the Python script
curl -L https://raw.githubusercontent.com/ericciarla/cli-tokenizer/main/cli-tokenizer-counter.py -o ~/bin/cli-tokenizer-counter.py

# Download the shell wrapper
curl -L https://raw.githubusercontent.com/ericciarla/cli-tokenizer/main/tokens -o ~/bin/tokens

# Make the shell wrapper executable
chmod +x ~/bin/tokens

echo "Installation complete. Make sure ~/bin is in your PATH, then you can use 'tokens' command."