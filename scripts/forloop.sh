#!/bin/bash

for NUM in `seq 0 1 4`
do
    let "NUM=$NUM * 2 + 1"
    printf "Número impar %d\n" $NUM
done

for ((i=0 ; i<10 ; i++))
do
    printf "El contador vale %d\n" $i
done