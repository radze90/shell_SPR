#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 3, Aufgabe 6
# Quelle: https://stackoverflow.com/questions/1853946/getting-the-last-argument-passed-to-a-shell-script
usage (){
   echo "usage: $0 <para1> <para2> ..." > /dev/stderr
   exit 1
}

## for usage ##
para=$#
if [ $para -eq 0 ]; then
   usage 
elif [ $para -lt 2 ]; then    # Wenn Anzahl Parameter < 2
   usage
fi

## main ##
echo ${@: -2}
