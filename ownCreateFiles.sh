#!/bin/bash
# create random files with own postfix

usage() {
   echo "usage: $0 <number of files> <postfix>" > /dev/stderr
   exit 1
}

## for usage ##
if [ $# -ne 2 ]; then
   usage
fi

## main ##
i=0
while [ $i -lt $1 ]; do
   touch test$i.$2
   i=$(( i + 1 ))
done
