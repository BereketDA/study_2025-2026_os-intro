#!/bin/bash
DIR=$1
ARCHIVE=$2
find $DIR -type f -mtime -7 > filelist.txt
tar -czvf $ARCHIVE -T filelist.txt
rm filelist.txt
echo "Archive created: $ARCHIVE"
