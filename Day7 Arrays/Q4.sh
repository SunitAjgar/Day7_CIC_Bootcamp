#!/bin/bash

arr=(2 43 -1 -33 24 12 -6)

for (( i = 0; i < ${#arr[@]}; ++i )); do
  if (( arr[i] > 0 )); then
    sum=`expr $sum + $i`
  fi
done
echo "$sum"