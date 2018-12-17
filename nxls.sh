#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 4, Aufgabe 5

usage() {
   echo "usage: $0 <directory>" > /dev/stderr
   exit 1
}

## for usage ##
if [ $# -ne 1 ]; then
   usage
fi

directoryCheck() {
   if [ ! -d $1 ]; then
      echo "$1" ist kein gültiges Verzeichnis
      exit 1
   fi
}
## main ##
directoryCheck $@
echo "Folgende Dateien sind nicht Ausführbar:"
for file in $1/*; do
   if [ ! -x $file ]; then
      echo $file
   fi
done

