#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 3, Aufgabe 4
# Schreiben Sie ein Bash-Skript int2bin.sh welches eine übergebene Ganzzahl als Bitstring ausgibt.

usage() {
   echo "Usage: $0 <integer>" > /dev/stderr
   exit 1
}

int2bin() {
   int=$1
   bin=""
   while [ $int -ne 0 ]; do
      rest=$(( int % 2 ))
      int=$(( int / 2 ))
      bin=$rest$bin
   done
   echo "Ganzzahl = $1 --> Bitstring = "$bin
   echo
}

## for usage ##
if [ $# -ne 1 ]; then
   usage
fi

## main #
int2bin $1
exit 0
