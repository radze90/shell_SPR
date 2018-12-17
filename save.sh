#!/bin/bash
# Systemprogrammierung - Aufgabenblatt 4, Aufgabe 1

usage() {
   echo "usage: $0 <postfix>" > /dev/stderr
   exit 1
}

backupDirCheck() {
   if [ ! -d "backup" ]; then
      mkdir backup
   fi
}

userQuestion() {
   echo "Wollen sie die Datei '$filename' nach 'backup/' kopieren? (J)a/(N)ein"
   read ans #answer
   if [[ $ans = j* ]] || [[ $ans = J* ]]; then
      ans=1    #yes
   elif [ "$ans" = nein ] || [ "$ans" = n ] || [ "$ans" = Nein ] || [ "$ans" = N ]; then
      ans=0    #no
   else
      userQuestion
   fi
}

copyToBackup() {
   for filename in *$1; do
      userQuestion $filename
      if [ "$ans" -eq 1 ]; then
         cp $filename backup/
      fi
   done
}

## for usage ##
if [ $# -ne 1 ]; then
   usage
fi

## main ##
backupDirCheck
copyToBackup $1
exit 0
