#!/bin/bash

sumar(){
    numero1=$1
    numero2=$2

    
    echo $[ $1 + $2 ]
    # return 0 // sirve para decir si la funcion se ejecuta bien, si queremos un return
    # usamos el eco
}

# ======================== MAIN ====================#

sumar 7 7

resultado=`sumar $1 $2` 
echo $resultado