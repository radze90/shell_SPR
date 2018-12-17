#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 4, Aufgabe 2

usage() {
   echo "usage: $0 <min> <max>" > /dev/stderr
   exit 1
}

## for usage ##
if [ $# -ne 2 ]; then
   usage
elif [ $1 -gt $2 ]; then
   usage
fi

## main ##

for file in $(ls); do
   stringlength=$(echo -n $file | wc -c)
   if [ $stringlength -ge $1 ] && [ $stringlength -lt $2 ]; then
     echo $file
   fi
done
