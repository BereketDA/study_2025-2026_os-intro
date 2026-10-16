#!/bin/bash
DIR="${1:-.}"
echo "Directory: $DIR"
echo "Contents:"
for file in "$DIR"/*
do
    if [ -e "$file" ]; then
        if [ -d "$file" ]; then
            echo "[DIR]  $file"
        elif [ -x "$file" ]; then
            echo "[EXEC] $file"
        elif [ -r "$file" ]; then
            echo "[READ] $file"
        else
            echo "[FILE] $file"
        fi
    fi
done
