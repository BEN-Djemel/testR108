#!/bin/bash

echo -n "Combien de dossier voulez-vous créer ? "
read doss
echo -n "Combien de fichier voulez-vous créer ? "
read fic

while [ $doss -ne 0 ]
do
	mkdir Dossier$doss
	doss=`expr $doss - 1`
done

while [ $fic -ne 0 ]
do
	touch Fichier$fic
	fic=`expr $fic - 1`
done
