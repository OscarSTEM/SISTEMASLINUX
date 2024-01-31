#!/bin/bash

mkdir $1
mkdir $1/bin
mkdir $1/src
mkdir $1/lib
printf '
public class App{
	public static void main(String[] args){
		System.out.println("Hola mundo!");
 }
}' >> $1/src/App.java
