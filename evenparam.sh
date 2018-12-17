#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 3, Aufgabe 5
# shift Quelle: http://openbook.rheinwerk-verlag.de/shell_programmierung/shell_005_003.htm

usage() {
   echo "Usage: $0 <para1> <para2> [<para3> <para4>] ..." > /dev/stderr
   exit 1
}

## for usage ##
para=$#                       # Anzahl Parameter
check=$(( $para % 2 ))        # ist die Parameteranzahl durch 2 teilbar?
if [ $check -gt 0 ]; then     # Modulo 0 = Ja, Modulo 1 = Nein -> usage
   usage
elif [ $para -lt 2 ]; then   # Wenn Anzahl Parameter < 2
   usage
fi

## main ##
while [ $# -ne 0 ]; do
   echo -n "$1=$2"
   shift 2                 # Parameter um 2 verschieben
   if [ $# -ne 0 ]; then   # solange nicht die letzten Para
      echo -n ", "         # , zwischen den Parametern
   else
      echo
   fi
done
exit 0

