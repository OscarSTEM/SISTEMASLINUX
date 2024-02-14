#!/bin/bash

# Haz un script que permita jugar a Blackjack.
# El "as" tiene un valor de 11.
# Las figuras tienen un valor de 10.
# El resto de cartas valen su número.
# El script debe permitir al usuario pedir carta.
# El script debe permitir al usuario plantarse.
# Una vez que el usuario se planta, le toca jugar al crupier.
# El crupier pide carta mientras su mano sume menos de 17.
# El jugador que se pase de 21 pierde automáticamente.
# Si no se pasan de 21, gana el jugador que más se acerque a 21.
# Debes guardar un log de la partida (cartas que van saliendo y 
# suma de las manos, así como el ganador en un fichero blackjack.log)

echo "Hay $# cartas"

suma=0


for cartas in $@
do 
    if [ $cartas == 1 ]
then
    suma=$[suma + 11]
elif [ $cartas == 11 ] || [ $cartas == 12 ] || [ $cartas == 13 ]
    then
        suma=$[ suma + 10 ]
elif [ $cartas -ge 2 ] && [ $cartas -le 10 ]
    then
        suma=$[ suma + cartas ]
    fi
done

if [ $suma -le 21 ]
then 
    echo "La suma es $suma. Has ganado."
else
    echo "La suma es $suma. Has perdido."
fi