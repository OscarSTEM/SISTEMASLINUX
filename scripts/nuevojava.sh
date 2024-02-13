#!/bin/bash
# Crea un script que genere la estructura de directorios de java
# y un App.java con "Hola mundo"

mkdir nuevojava
mkdir nuevojava/bin
mkdir nuevojava/src
mkdir nuevojava/lib
touch nuevojava/src/App.java
printf "
public class App{
	public static void main(String[] args){
		System.out.println(\"Hola mundo!\");
	}
}">>nuevojava/src/App.java