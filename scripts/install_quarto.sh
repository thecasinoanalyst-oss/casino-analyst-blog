#!/bin/bash
set -e

echo "Downloading Quarto..."
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.39/quarto-1.6.39-linux-amd64.tar.gz

echo "Extracting Quarto..."
tar -xzf quarto-1.6.39-linux-amd64.tar.gz

echo "Setting up Quarto PATH..."
export PATH="$(pwd)/quarto-1.6.39-linux-amd64/bin:$PATH"

echo "Quarto installed successfully!"
quarto --version

