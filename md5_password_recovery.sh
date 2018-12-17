#/bin/bash
# Systemprogrammierung - Aufgabenblatt 4, Aufgabe 4

usage() {
   echo "usage: $0 <wordlist> <md5-hashes>" > /dev/stderr
   exit 1
}

## for usage ##
if [ $# -ne 2 ]; then
   usage
fi

## main ##
clear
words=$(cat $1)
echo -e "    hits,\tpassword,\tMD5 hash"
echo "-----------------------------------------------------------------"
for word in $words; do
   var1=$(echo -n $word | md5)
   count=$(cat $2 | grep $var1 | wc -l)
   echo -e "$count,\t\"$word\",\t$var1" >> .cache
done

sort -r .cache
rm .cache
