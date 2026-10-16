#!/bin/bash
INPUT=""
PATTERN=""
while getopts "i:p:" opt
do
case $opt in
i) INPUT=$OPTARG ;;
p) PATTERN=$OPTARG ;;
esac
done
grep $PATTERN $INPUT
