#!/bin/bash

if [ $1 == "m" ]
then
    mkdir $2
elif [ $1 == "r" ]
then
    rm -r $2
elif [ $1 == "f" ]
then
    mkdir $2
    for ((i=0 ; i<$3 ; i++))
    do
        touch $2/$i
    done
fi