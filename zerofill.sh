#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file-path>"
    exit 1
fi

FILE="$1"

# Get the file size
SIZE=$(stat --format=%s "$FILE")

# Overwrite the file with zeros using dd
echo "Overwriting file: $FILE with zeros..."
dd if=/dev/zero of="$FILE" bs=1M count=$((SIZE / 1024 / 1024)) status=progress

# Remove the file after overwriting
rm -v "$FILE"

echo "File securely overwritten with zeros and removed."
