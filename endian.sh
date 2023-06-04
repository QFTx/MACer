#!/bin/bash

# check 1st arg or stdin
if [ $# -ne 1 ]; then
  if [ -t 0 ]; then
    exit
  else
    v=`cat /dev/stdin`
  fi
else
  v=$1
fi

i=${#v}

while [ $i -gt 0 ]
do
    i=$[$i-2]
    echo -n ${v:$i:2}
done

echo

