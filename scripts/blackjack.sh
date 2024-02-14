#HAZ UN SCRIPT QUE SUME CARTAS DE BLACKJACK
# 1 -> 11
# 2 -> 2
# 3 -> 3
# 4 -> 4
# 5 -> 5
# 6 -> 6
# 7 -> 7
# 8 -> 8
# 9 -> 9
# 10 -> 10
# 11 -> 10
# 12 -> 10
# 13 -> 10
#VALORES FUERA DE RANGO NO SE TIENEN EN CUENTA
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