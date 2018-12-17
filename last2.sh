#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 3, Aufgabe 6
# shift Quelle: http://openbook.rheinwerk-verlag.de/shell_programmierung/shell_005_003.htm
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
i=$(( $# - 2 ))
shift $i
echo -n "$1 "
shift 1
echo $1
