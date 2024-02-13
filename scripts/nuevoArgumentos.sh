#!/bin/bash
# Crea un script que genere la estructura de directorios de java
# introduciendo por teclado el nombre del proyecto y un App.java con "Hola mundo"

mkdir $1
mkdir $1/bin
mkdir $1/src
mkdir $1/lib
printf "
public class App{
	public static void main(String[] args){
		System.out.println(\"Hola mundo!\");
	}
}">>$1/src/App.java