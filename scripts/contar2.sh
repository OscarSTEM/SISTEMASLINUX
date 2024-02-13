#!/bin/bash

for NUM in `seq $1 1 $2`
do
    echo $NUM>>$3
done