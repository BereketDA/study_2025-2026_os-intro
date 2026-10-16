#!/bin/bash
ALPHABET=abcdefghijklmnopqrstuvwxyz
LENGTH=$1
for ((i=0; i<LENGTH; i++))
do
echo -n ${ALPHABET:RANDOM%26:1}
done
echo ""
