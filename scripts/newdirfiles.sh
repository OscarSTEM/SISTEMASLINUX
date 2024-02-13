#!/bin/bash

# Compobamos que los argumento son 3 y que el segundo 
# argumento se encuentra entre 1 y 99
if [ $# -eq 3 ] && [ $2 -ge 1 ] && [ $2 -le 99 ]
then
    dirname=$1
    num_files=$2
    basefilename=$3

    # Si $dirname no existe, lo creamos (usamos el flag -d 
    # para comprobar que sea un directorio)
    if ! test -d $dirname
    then
        mkdir $dirname
    fi

    for ((i=1 ; i<=$num_files ; i++))
    do
        touch $dirname/$basefilename$i.txt
    done

fi