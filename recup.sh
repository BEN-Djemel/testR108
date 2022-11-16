#!/bin/bash

mkdir backup
if ! [ $# -eq 2 ]; then
	echo "Le nombre de paramètres n'est pas égal à 2."
else
	if ! [ -e $1 ]; then
		echo "$1 n'existe pas."
	else
		if ! [ -f $1 ]; then
			echo "$1 n'est pas un fichier"
		else
			cp $1 backup
			mv backup/$1 backup/$2
			cat backup/$2
		fi
	fi
fi
