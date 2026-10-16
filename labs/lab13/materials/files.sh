#!/bin/bash
N=$1
ACTION=$2
if [ "$ACTION" == "delete" ]; then
for i in $(seq 1 $N); do rm -f $i.tmp; done
echo "Deleted $N files"
else
for i in $(seq 1 $N); do touch $1.tmp; done
echo "created $N files"
fi
