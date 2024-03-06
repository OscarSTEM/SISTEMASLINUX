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

getCarta(){
    echo $[ $RANDOM % ( 13 - 1 + 1 ) + 1 ]
}

imprimirMenu(){
    echo "c: pedir carta | p: plantarse"
}

calcularPuntuacionMano(){
    for carta in $@
    do
        if [ $carta -eq 1 ]
        then
            suma=$[ suma + 11 ]
        elif [ $carta -eq 11 ] || [ $carta -eq 12 ] || [ $carta -eq 13 ]
        then
            suma=$[ suma + 10 ]
        elif [ $carta -ge 2 ] && [ $carta -le 10 ]
        then
            suma=$[ $suma + $carta ]
        fi
    done
    
    echo $suma
}

# ======================== MAIN ======================== #

echo "PARTIDA DE BLACKJACK" > blackjack.log

manoJugador=()
manoCrupier=()

manoCrupier+=(`getCarta`)

manoJugador+=(`getCarta`)
manoJugador+=(`getCarta`)

plantado=false

while ! $plantado
do
    
    puntosJugador=`calcularPuntuacionMano ${manoJugador[@]}`
    puntosCrupier=`calcularPuntuacionMano ${manoCrupier[@]}`

    datosJugador="La mano del Crupier ($puntosCrupier) es: ${manoCrupier[*]}"
    datosCrupier="La mano del jugador ($puntosJugador) es: ${manoJugador[*]}"
    
    echo $datosJugador
    echo $datosCrupier
    echo $datosJugador >> blackjack.log
    echo $datosCrupier >> blackjack.log
    
    if [ $puntosJugador -eq 21 ]
    then
        echo "¡Tu mano suma 21!"
        plantado=true
    elif [ $puntosJugador -gt 21 ]
    then
        plantado=true
        ganaJugador=false
    else
        imprimirMenu
        
        read opcion
        
        if [ $opcion == "c" ]
        then
            manoJugador+=(`getCarta`)
        elif [ $opcion == "p" ]
        then
            plantado=true
        fi
    fi
done

# JUEGA EL CRUPIER (SI NO ME HE PASADO)

while [ ! $ganaJugador ] && [ $puntosCrupier -lt 17 ]
do
    echo "El Crupier pide carta"
    
    manoCrupier+=(`getCarta`)
    puntosCrupier=`calcularPuntuacionMano ${manoCrupier[@]}`
    
    datosJugador="La mano del Crupier ($puntosCrupier) es: ${manoCrupier[*]}"
    datosCrupier="La mano del jugador ($puntosJugador) es: ${manoJugador[*]}"
    
    echo $datosJugador
    echo $datosCrupier
    echo $datosJugador >> blackjack.log
    echo $datosCrupier >> blackjack.log
done

# CALCULAMOS EL GANADOR

if ! $ganaJugador
then
    echo "¡Te has pasado de 21! ¡Has perdido, payaso!"
    echo "Gana el Crupier" >> blackjack.log
elif [ $puntosCrupier -gt $puntosJugador ] && [ $puntosCrupier -le 21 ]
then
    echo "¡La casa siempre gana!"
    echo "Gana el Crupier" >> blackjack.log
elif [ $puntosCrupier -eq $puntosJugador ]
then
    echo "¡Empate!"
    echo "Empate" >> blackjack.log
else
    echo "¡A ganar a ganar, pollo para cenar!"
    echo "Gana el Jugador" >> blackjack.log
fi