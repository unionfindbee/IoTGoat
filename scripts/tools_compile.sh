#!/bin/bash

# Change to the directory containing the C files
cd /app/OpenWrt/openwrt-18.06.2/tools

# Create a directory to store the compiled binaries
mkdir -p /app/targets

# Find all .c files containing 'int main', compile each one to a separate binary
find . -name '*.c' -exec grep -l "int main" {} \; | while read filename; do
    # Extract the base name for the binary
    base_name=$(basename "$filename" .c)
    # Compile the C file into a binary and place it in the 'targets' directory
    gcc -o "/app/targets/$base_name" "$filename"
done

# List the compiled binaries
echo "Compiled binaries:"
ls /app/targets/