#!/bin/bash

CMD="$1"

if [ -z "$CMD" ]; then
    echo "Usage: $0 <command>"
    exit 1
fi

FILE="/usr/share/man/man1/$CMD.1.gz"

if [ -f "$FILE" ]; then
    zcat "$FILE" | less
else
    echo "No manual entry for $CMD"
fi
