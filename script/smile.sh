#!/bin/bash

LOG=smile.log
: > $LOG
LN=0

WORD='%83X%83%7D%83C%83%8B%83v%83%8A%83L%83%85%83A'

for i in `seq 0 10000`; do
  curl -s "http://2chlog.com/2ch/live/thread_search/thread_search.php?page=$i&term=all&word=$WORD" | nkf | grep 件見つ | sed 's,</td>,\n,g' | grep l50 | sed 's/<[^>]*>//g' | tee -a $LOG
  LN2=`wc -l $LOG | cut -d' ' -f1`
  echo $LN2
  if [ $LN -eq $LN2 ]; then
    break
  fi
  LN=$LN2
  sleep 1
done

