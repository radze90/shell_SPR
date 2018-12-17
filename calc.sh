#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 4, Aufgabe 6

usage() {
   echo "usage: $0 <int> <MULT | ADD | SUB | DIV | MOD | EXP> <int>" > /dev/stderr
   exit 1
}

## for usage ##
if [ $# -ne 3 ]; then
   usage
fi

## main ##
case "$2" in
   MULT) echo $(( $1 * $3 ));;
   ADD) echo $(( $1 + $3 ));;
   SUB) echo $(( $1 - $3 ));;
   DIV) echo $(( $1 / $3 ));;
   MOD) echo $(( $1 % $3 ));;
   EXP) echo $(( $1 ** $3 ));;
   *) echo "$2 ist ein Unbekannter Operator!" > /dev/stderr;;
esac
