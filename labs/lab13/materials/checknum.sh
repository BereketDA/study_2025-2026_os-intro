#!/bin/bash
read num
echo $num | ./check
case $? in
0) echo "Number is zero" ;;
1) echo "Number is positive" ;;
esac
