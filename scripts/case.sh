#!/bin/bash
printf "1 = borrar, 2 = crear, 3 = copiar. Elija una opción:\n"
TEMPFILE=temporal
read REPLY
case "$REPLY" in
    1) touch "$TEMPFILE";;
    2) touch "$TEMPFILE";;
    3) cp "$TEMPFILE" "$TEMPFILE.old" ;;
    *) printf "%s\n" "$REPLY no es una de las opciones" ;;
esac