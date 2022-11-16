#!/bin/bash

echo -n "Dans quel fichier voulez-vous compter le nombre de fois vitry ? "
read fic
if ! [ -f $fic ]; then
	echo "$fic n est pas un fichier"
else
	compteur=`cat $fic | grep -o 'vitry' | wc -l`
	#l option -o va mettre vitry a chaque nouvelle lignes, et wc -l va compter le nombre de lignes
	echo "il y a $compteur fois le mots vitry."
fi