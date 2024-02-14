#!/bin/bash

echo $RANDOM # Entero aleatorio entre 0 y 32767

echo $[ $RANDOM % 10 ] # Entero aleatorio entre 0 y 9

echo $[ $RANDOM % 10 + 1 ] # Entero aleatorio entre 1 y 10

echo $[ $RANDOM % ( 10 - 2 ) +  ( 2 )] # Entero aleatorio entre 2 y 10

#echo $[ $RANDOM % (  ESTO ES EL MAXIMO -> 100 - 
#ESTO ES EL MINIMO -> 20 + 1 ) +  ( 20 )] # Entero aleatorio entre 20 y 100

echo $[ $RANDOM % ( 14 - 3 + 1 ) +  ( 3 )] # Entero aleatorio entre 2 y 10