#!/bin/bash

# Source files and folders
FILES=(
    "$HOME/.zshrc"
)

SOURCE_DIR="$HOME/.config"
# Destination directory
DEST_DIR="$HOME/archconfig"

mkdir -p "$DEST_DIR"

for item in "${FILES[@]}"; do
    if [ -e "$item" ]; then
        cp -r "$item" "$DEST_DIR"
        echo "Copied: $item -> $DEST_DIR"
    else
        echo "Error: $item does not exist!"
    fi
done

echo "Backup complete!"


git add .
echo "Secessfully Added!"

git commit -m "+++: Adding new config"
echo "Written Commit"

git push
echo "Code Pushed"
