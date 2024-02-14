#!/bin/bash

# Haz un script que reciba como primer argumento el nombre de
# un fichero y escriba el resto de argumentos en el fichero
# La primera línea del fichero debe ser el número de filas escritas

# ==================== VERSIÓN SIN `shift` ==================== #

numeroArgumentos=$#
fichero=$1

echo "$numeroArgumentos líneas escritas" > $fichero

i=1
for linea in $@; do
    if [ $i -ne 1 ]
    then
        echo "$linea" >> $fichero
    fi
    i=$[ i + 1 ]
done

# ==================== VERSIÓN USANDO `shift` ==================== #

numeroArgumentos=$#
fichero=$1
shift

# El comando shift en Bash se utiliza para desplazar los argumentos
# de posición hacia la izquierda en la lista de argumentos. 
# Cada vez que se ejecuta shift, el primer argumento se elimina 
# y los demás se mueven una posición hacia la izquierda. 
# ($1 desaparece y $2 pasa ser $1, $3 pasa a ser $2, etc.)

echo "$numeroArgumentos líneas escritas" > $fichero

for linea in $@
do
    echo $linea >> $fichero
done