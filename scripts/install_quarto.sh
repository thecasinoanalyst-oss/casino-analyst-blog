#!/bin/bash
set -e

echo "Downloading Quarto..."
cd /tmp
curl -LO https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.39/quarto-1.6.39-linux-amd64.tar.gz

echo "Extracting Quarto..."
tar -xzf quarto-1.6.39-linux-amd64.tar.gz

echo "Quarto installed successfully!"
/tmp/quarto-1.6.39/bin/quarto --version

echo "Rendering site..."
cd /opt/build/repo
/tmp/quarto-1.6.39/bin/quarto render

echo "Build complete!"