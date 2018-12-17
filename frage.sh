#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 3, Aufgabe 3
# $ ./frage.sh "Noch einen Kaffee ? " "Ja" "Nein"

usage() {
   echo "Usage: $0 <question> <answer1> <answer2>" > /dev/stderr
   exit 100
}

## for usage ##
if [ $# -ne 3 ]; then
    usage
fi

## main ##
echo -n "$1 ($2/$3): " 
read answer
if [ "$answer" = $2 ]; then
   exit 0;
elif [ "$answer" = $3 ]; then 
   exit 1;
fi
