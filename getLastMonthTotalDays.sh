#!/bin/bash
## Modify BACKTRACK to observe different results
BACKTRACK=1
LMTH=$(date -d "-$BACKTRACK month" +"%m")
LMTHDAYS=$(( for d in {00..31}; do date -d "-$BACKTRACK month +$d days" +%m-%d ; done ; ) | grep -Po "(?<=$LMTH-)\d+" | sort -rn | head -1)
echo $LMTH $LMTHDAYS
