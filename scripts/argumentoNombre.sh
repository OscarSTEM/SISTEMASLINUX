#!/bin/bash

# Haz un script que reciba como primer argumento el nombre de 
# un fichero y escriba el resto de argumentos en el fichero
# La primera linea del fichero debe ser el numero de filas escritas

fichero=$1 
numeroArgumentos=$#

 echo "$numeroArgumentos lineas escritas" > $fichero
# for ((i=1 ; i<$numeroArgumentos ; i++))
# do
#     echo ${$@[i]}
#     echo "${i}" >> $fichero
# done

i=0
for fila in $@
do  
    if [ $i -ne 0 ]
    then
        echo $fila >> $fichero
    fi
    i=$[ i + 1]
done    