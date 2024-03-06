#!/bin/bash

# Haz un script en el que dos usuarios juegan a la ruleta rusa
# El orden de inicio se decide a cara o cruz
# cara: comienza el primer jugador y cruz: comienza el segundo jugador
# Debes crear un array booleano de 6 posiciones a false e insertar de forma
# aleatoria un true.
# los jugadores van disparando en orden hasta que alguno tiene suerte


# Revolver vacío
revolver=(false false false false false false)

# Posición donde irá la bala
bala=$[ $RANDOM % 6 ]

# Cargo el revolver
revolver[$bala]=true

# Leo el nombre de los jugadores
echo "¿Quién es el jugador 1?"
read jugador1

echo "¿Quién es el jugador 2?"
read jugador2

# Tiro la moneda y decido el orden de juego
moneda=$[ $RANDOM % 2 ]

if [ $moneda -eq 0 ]
then
    primero=$jugador1
    segundo=$jugador2
else
    primero=$jugador2
    segundo=$jugador1
fi

# Jugamos

vivos=true
turnoPrimero=true
tiro=0

while $vivos
do
    if $turnoPrimero
    then
        jugadorDispara=$primero
        turnoPrimero=false
    else
        jugadorDispara=$segundo
        turnoPrimero=true
    fi
  
    echo "Dispara el jugador: $jugadorDispara"
    
    echo "Introduce d para disparar."
    read disparo

    if [ $disparo == "d" ]
    then
        if ${revolver[$tiro]}
        then
            vivos=false
        else
            tiro=$[ $tiro + 1 ]
        fi
    fi
    
done

echo "Ahora $jugadorDispara ha conocido a Thanos"

# Imprimo el revolver
echo ${revolver[*]}