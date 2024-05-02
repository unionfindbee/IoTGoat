#!/bin/bash

# Change to the directory containing the compiled binaries
cd /app/targets

# Execute each binary in the directory
for binary in *; do
    echo "Executing $binary..."
    echo "-----------------------------------"
    ./"$binary"
    echo -e "\n"
done