#!/bin/bash

# Haz un script que reciba los siguientes argumentos:
# 1 -> Nombre de directorio base
# 2 -> Nombre de fichero para la suma
# 3 -> Nombre de fichero para la media
# 4 y sucesivos -> Lista de números para operar

# El script debe crear el directorio y los ficheros indicados.
# El script debe calcular la suma y la media de todos los números
# y almacenar el resultado en los ficheros correspondientes

directorioBase=$1 #CON EL SHIFT SE GUARDA Y LUEGO SE BORRA

shift
ficheroSuma=$1
shift
ficheroMedia=$1
shift

mkdir $directorio
sumatorio=0
for numero in $@
do
    sumatorio=$[sumatorio + numero]
done

echo "La suma es $sumatorio" > $directorio/$ficheroSuma
echo "La suma es $[sumatorio/$#]" > $directorio/$ficheroSuma