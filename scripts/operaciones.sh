#!/bin/bash

if [ $1 == "suma" ]
then
    echo "La suma es $[$2 + $3]"
elif [ $1 == "resta" ]
then
    echo "La resta es $[$2 - $3]"
elif [ $1 == "producto" ]
then
    echo "El producto es $[$2 * $3]"
fi