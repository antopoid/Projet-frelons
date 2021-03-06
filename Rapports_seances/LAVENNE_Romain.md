--------------------------27/08/21----------------------------------------
Création du répertoire Git
Lecture et prise en main de l'ancien projet
Visite des ruches pour comprendre la problématique
Création d'un fichier d'état des lieux
Définition des tâches à effectuer (prise en main de l'ancien projet, analyse etc)

---------------------------------------------------------------------------
--------------------------09/09/21-----------------------------------------
Test des détecteurs de tonalité
Brasage des micros et des alimentations puis test au niveau des ruches 
Les essais ne sont pas concluant, nous supposons que le signal en entrée est trop faible.
Sur une carte : Remplacement de la résistance R2 470 -> 220 ohms afin d'augmenter le gain en sortie d'AOP.
Sur la seconde carte : Remplacement du micro par un de diamètre plus important
Sur les deux : Remplacement des condensateurs C1 1µF -> 47µF (non correspondance entre le schéma et la carte)
Avec les enregistrements nous n'arrivons pas à faire déclencher les cartes. 
J'ai emmené les cartes afin de faire l'essai chez moi et analyser les sons enregistrés
---------------------------------------------------------------------------
--------------------------17/09/21-----------------------------------------
Fin des tests de detecteur de tonalité
Réglage des cartes à environ 230 Hz, création du rapport de test (accessible dans github : Rapport_detecteur_tonalite.xslx)
Rencontre avec Bernard Barrois et Jody Nourry en visio afin de nous présenter leur projet et exprimer leurs attentes
Le rapport de test est ici ./Projet_frelons/Rapport_detecteur_tonalite.xlsx
Le détecteur de tonalité est mis de côté pour le moment, le but est de créer une nouvelle carte à base d'esp32 WROVER et d'optimiser les I/O,
le but de cette carte est de pouvoir réunir toutes les fonctionnalités nécessaires sur un seul support
La prochaine séance sera consacré à l'étude et la comparaison des microcontrolleur esp32 WROOM et WROVER
---------------------------------------------------------------------------
--------------------------23/09/21-----------------------------------------
Création d'un fichier de correspondance entre un esp32 WROVER, un kit de developpement réalisé par espressif et notre besoin.
Le but étant de réussir à intégrer au minimum toutes les I/O nécessaires au projet.
---------------------------------------------------------------------------
--------------------------01/10/21-----------------------------------------
Finalisation du fichier de correspondance, toutes les I/O rentrent dans l'ESP, pour cela il faudra gérer l'alimentation des périphériques (SDCard - Caméra/Moteur/Laser)
séparement.
Lien vers le fichier de correspondance : ./Projet_frelons/Tableau_correspondance_pinsV2.xlsx
Nous avons aussi brasé des esp32 sur des cartes de test (carte de report)
---------------------------------------------------------------------------
--------------------------22/10/21-----------------------------------------
Réalisation du schéma de la carte avec l'aide du fichier réalisé précedemment
L'esp32, la sd card, la caméra sont câblés.
Il reste à vérifier via des tests sur table (avec les cartes faites précedemment) que le schéma est correct
---------------------------------------------------------------------------
--------------------------12/11/21-----------------------------------------
Point avec M Peter sur le schéma de la carte.
Mise à jour du schéma
Les schémas sont stockés ici : ./Projet_frelons/Schema_carte
---------------------------------------------------------------------------
--------------------------Fin 2021 - début 2022----------------------------
M Peter à finalisé le routage du PCB, le schéma se trouve ici : ./Projet-frelons/Schema_carte/Final
Le PCB a été envoyé en production
--------------------------07/01/22-----------------------------------------
TEST SUR LE PCB
Essai de connexion sans succès sur l'ESP32 Wrover
Pourtant un ESP32 CAM fonctionne correctement...
Utilisation d'un autre IDE (Vscode) sans succès
Mesures et essais de différentes tensions d'alimentation 5V et 3.3V - ok
Le convertisseur USB-TTL est bien reconnu, mais il n'est pas possible d'établir la liaison avec l'ESP 
Problème non résolu pour le moment, il est impossible de confirmer le bon fonctionnement de la caméra avec cette configuration pour le moment.
---------------------------------------------------------------------------
--------------------------03/02/22-----------------------------------------
TEST SUR LE PCB
L'ESP32 sur la carte de test ne peut pas se téléverser automatiquement, il faut appuyer sur les deux boutons (RST et PROG) puis relacher RST puis PROG. La cause reste inconnue.
Nous avons reçu les nouvelles cartes, braser les différents composants CMS et traversants. Il manque une capa de 15 pF, remplacé par une 10pF pour le moment (clk de la caméra)
3 erreurs pour le moment sur la carte : 
- I0 est relié nulle part conséquence --> impossible d'effectuer le téléversement (a noter que le téléversement en automatique fonctionne )
- La commande du 5v et du 3V3 est réalisé par le PCA9685 qui lui même est alimenté le 5v ou le 3V3, nous avons donc alimenté directement le PCA9685
- Led inversé
Prochain cours : suite du debug de la carte 
--------------------------04/02/22-----------------------------------------
TEST SUR LE PCB
J'ai créé un fichier excel répertoriant les différents tests effectués ainsi que les corrections à apporter sur une prochaine version de la carte.
Le fichier se trouve ici ./Projet_frelons/Debug_carte.xlsx
J'ai pu valider le fonctionnement du PCA9685.
Prochain cours : test de la mesure de la LDR via le MCP3428
				 test du pilotage du 5v et du POWER_SD(Alimentation de la carte SD)
--------------------------10/02/22-----------------------------------------
TEST SUR LE PCB
Note : attention à bien changer les pins SDA et SCL car en général les pins par défaut sont mappées sur 21 et 22.
Dans notre cas SCL : 32, SDA : 33
Test du MCP3428 et de l'alimentation via le connecteur X1 (alimentation en 5v et 3v3 via un régulateur de tension)
Ok avec la LDR et le 5v_MES (les mesures des signaux sont dans ./Projet_frelons/Debug_carte.xlsx)
Les codes utilisés pour les tests se trouvent ici : ./Projet_frelons/Arduino
Prochain cours : test de la caméra
				 test de la SD Card
--------------------------11/02/22-----------------------------------------
TEST SUR LE PCB
Récupération de différents codes pour tester la caméra et la carte SD (disponible dans ./Projet_frelons/Arduino)
Impossible de faire fonctionner la caméra sur le PCB (avec un code fonctionnant sur un ESP32 CAM)
Il s'avère que le pinout de la nappe de la caméra est inversée par rapport au connecteur.
Il n'est donc pas possible pour le moment de tester la caméra (impossibilité de retourner le connecteur)
Je vais également attendre le retour de Arnaud et Gilbert qui travaille sur la caméra avec la carte de test.
Pour la carte SD, nous avons essayé un bout de code fonctionnant avec l'ESP32 CAM.
Ce même code ne fonctionne pas sur le PCB. Après analyse je me suis rendu compte que j'ai oublié les resistances de tirage sur les pins data et CMD.
J'ai fait un dernier test à la fin de la séance qui n'a pas été concluant.
Prochain cours : essayer de résoudre le problème avec la carte SD
				 essayer le micro et les moteurs
				 aider au besoin Gilbert et Arnaud pour faire fonctionner la caméra sur la carte de test
--------------------------03/03/22-----------------------------------------
TEST SUR LE PCB - SD CARD
J'ai essayé de faire marcher la sd card du PCB sans succès. Je me suis finalement rendu compte que sur le schéma du PCB, c'est une SD Card qui est dessinée et non le support de SD.
De ce fait, toutes les pins sont inversées. J'ai essayé d'abord de braser une nappe sur un support de sd en volant afin de le relier au support côté carte, mais les pins étaient beaucoup trop petites.
J'ai essayé ensuite de braser un support de SD à l'envers mais je n'ai pas réussi à faire fonctionner la SD card. J'ai toujours le même message d'erreur "No card mounted"
Prochain cours : je continue d'analyser le problème de la SD card.
--------------------------04/03/22-----------------------------------------
TEST SUR LE PCB - SD CARD
Cette fois ci j'ai essayé de faire marcher la SD card en utilisant un autre PCB (identique au prototype), mais comprenant seulement le support de SD card et en utilisant un ESP Heltec Wifi Lora 32.
J'ai cablé le support de SD à l'inverse du PCB prototype mais en utilisant exactement les mêmes I/O.
J'ai finalement réussi à créer un fichier, écrire dedans puis le lire.
J'ai mis à jour le schéma du PCB. Le tableau de correspondance (./Projet_frelons/Tableau_correspondance_pinsV2.xlsx) reste intact car nous utilisons les mêmes pins.
J'ai mis à jour le fichier debug carte (./Projet_frelons/Debug_carte.xlsx) en rajoutant le pinout d'une micro SD et le connecteur du PCB.
A noter qu'il faudra essayer de câbler les resistances de 47k servant de pullup sur les pins data de la SD(je ne connais pas l'impact de ces resistances pour le moment)
Prochain cours : Avoir la possibilité d'essayer le nouveau PCB avec les corrections et valider toutes les fonctionnalités.
--------------------------11/03/22-----------------------------------------
Présentation du rapport d'activité du semestre.
En seconde partie de cours : La V2 de la carte étant en production, j'ai commencé à essayer de piloter les moteurs via le PCA9685 de la carte V1. 
Les moteurs fonctionnent sans problème, il faut juste que je comprenne comment les piloter correctement. (ils arrivent à chaque fois en butée)
Prochain cours : Essayer les fonctionnalités de la carte V2 (Caméra, SD Card, PCA9685, MCP3428, alimentations).
				 Si tout est ok, préparer un exemplaire à envoyer à Bernard Barrois et Jody Nourry.
				 Prochain cours : Avoir la possibilité d'essayer le nouveau PCB avec les corrections et valider toutes les fonctionnalités.
--------------------------29/03/22-----------------------------------------
Nous avons reçu les nouvelles cartes, M Peter s'est déjà occupé de braser les composants CMS sur deux PCB.
Je me suis occupé de mettre les boutons, la LDR, et les borniers pour le téléversement.
J'ai travaillé sur une des deux cartes (possibilité de l'identifier si besoin). 
Le but étant de tester l'ensemble des fonctionnalités de la carte pour la dernière séance et d'avoir un livrable à fournir.
Les programmes de test que j'ai validé avec la carte sont stockés ici : ./Projet-frelons/ExecutablePourTest
J'ai inclus également dans ce dossier les librairies nécessaires au fonctionnement des programmes.
Le test des LEDs permet de valider le PCA9685 et la partie pilotage des alimentations. (Note : pour les alimentations et les LEDs ==> setPin à 0 = sortie à 1)
Le test de la LDR permet de valider le MCP3428.
Pour le test de la SDCard, je n'ai pas réussi à faire fonctionner le programme que j'avais utilisé auparavant sur l'esp32 lora.
Finalement, en utilisant l'exemple de programme fourni avec la bibliothèque de l'esp32 (création de fichier et dossier) cela à fini par marcher.
Attention il me semble que si la carte est alimenté uniquement par l'USB d'un PC, la SDCard est un peu capricieuse et ne fonctionne pas toujours. (En USB ==> socket à vide j'ai 2,7V et avec la carte 2,2 - 2,4V entre V+ et GND)
Gilbert et Arnaud ont pris en charge le test de la caméra. Hormis ce dernier point, le reste de la carte est fonctionnel.
