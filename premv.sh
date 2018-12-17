#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 4, Aufgabe 3

usage() {
   echo "usage: $0 <old-prefix> <new-prefix>" > /dev/stderr
   exit 1
}

## for usage ##
if [ $# -ne 2 ]; then
   usage
fi

## main ##

lengthOld=$(echo -n $1 | wc -c)
length=$(( $lengthOld + 1 ))

for file in $(ls $1*); do
   nonePrefix=$(echo $file | cut -c $length-)
   newFilename=$(echo -n $2$nonePrefix)
   mv $file $newFilename
done
