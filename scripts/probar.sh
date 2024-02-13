#!/bin/bash

# Este script se debe situar en la raiz del proyecto java
# TO-DO: Si no compila, no debería ejecutar el resto de líneas
# TO-DO: Solo sirve para App.java

# 1. Compilar
javac src/App.java -d lib

# 2. Añadir al repositorio
git add --all

# 3. Commit con texto pasado como argumento (debe estar entrecomillado)
git commit -m "$1"

# 4. push
git push

# 5. Me muevo a /lib y ejecuto
cd lib
java App