#!/bin/bash
echo "Number of arguments: $#"
echo "All arguments:"
for arg in "$@"
do
    echo "$arg"
done
