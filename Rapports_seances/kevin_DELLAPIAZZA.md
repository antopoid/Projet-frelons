1er semestre

Séance du 27/08/21

-Récupération du dossier Git du groupe de l'année précédente
-Lecture et prise en main de l'ancien projet
-Visite des ruches sur le site polytech pour comprendre la problématique 
-récupération du matériel + définition des tâches à réaliser


Séance du 09/09/21

-Test des capteurs de tonalité sur site polytech au niveau des ruches
-Résultat pas concluant, Avec un enregistrement le module déclenche bien la présence d'un frelon 
mais lorsque l'on test en réel le module ne déclenche pas
-Nous supposons que le signal en entrée est trop faible par conséquent il va falloir les amplifier
-Vu que nous avons deux modules de détection:
	* sur la première, changement R2 470->220 Ohms pour augmenter le gain
	* sur la deuxième, changement du micro par un micro qui a un diamètre plus grand
	* sur les deux, changement des condensateurs C1 1µF -> 47µF 

Séance du 17/09/21

-Call fait avec Bernard Barrois et Jody Nourry sur le projet depuis longtemps afin de nous exposer 
leur problématique + explication du projet.
-Recherche des fréquences de détection (proche des 230Hz) rapport de test.
-Décision de mettre en suspent le détecteru de tonalité afin de créer une carte avec un esp32WROVER

Séance du 23/09/21

-Travaille de recherche sur les I/O et définitions de celles-ci (disponible ou non)
-Call sur un projet de détection d'image 


2ème semestre

Séance du 03/02/2022 

Recherche dans les datasheets afin de trouver et/ou de calculer les différentes consommations des sorties. 
Caméra : En action : 125mW 
	 En standby : P = U*I; Avec U=3.3V et I= 600µA Soit P= 3.3 * 600 E-6 = 1980 * 10-6

Séance du 10/02/2022 et du 11/02/2022

Objectif de la séance: faire fonctionner les différents systèmes
		       analyser le code pour la caméra (cf mail peter 06/02/2022)
		   
f



Séance du 03/03/2022

Séance du 04/03/2022

Séance du 11/03/2022
