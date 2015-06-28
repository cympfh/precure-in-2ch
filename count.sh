#!/bin/bash

LOG=$1
for i in `seq 50`; do
  LN=`cat $LOG | grep "[^0-9]${i}★\|[^0-9]0${i}話\|[^0-9]${i}わ\|[^0-9]${i}話\|#${i}[^0-9]" | wc -l`
  echo $i $LN
done |
grep -v ' 0$'

