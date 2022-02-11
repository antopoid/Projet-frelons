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
Essai de connexion sans succès sur l'ESP32 Wrover
Pourtant un ESP32 CAM fonctionne correctement...
Utilisation d'un autre IDE (Vscode) sans succès
Mesures et essais de différentes tensions d'alimentation 5V et 3.3V - ok
Le convertisseur USB-TTL est bien reconnu, mais il n'est pas possible d'établir la liaison avec l'ESP 
Problème non résolu pour le moment, il est impossible de confirmer le bon fonctionnement de la caméra avec cette configuration pour le moment.
---------------------------------------------------------------------------
--------------------------03/02/22-----------------------------------------
L'ESP32 sur la carte de test ne peut pas se téléverser automatiquement, il faut appuyer sur les deux boutons (RST et PROG) puis relacher RST puis PROG. La cause reste inconnue.
Nous avons reçu les nouvelles cartes, braser les différents composants CMS et traversants. Il manque une capa de 15 pF, remplacé par une 10pF pour le moment (clk de la caméra)
3 erreurs pour le moment sur la carte : 
- I0 est relié nulle part conséquence --> impossible d'effectuer le téléversement (a noter que le téléversement en automatique fonctionne )
- La commande du 5v et du 3V3 est réalisé par le PCA9685 qui lui même est alimenté le 5v ou le 3V3, nous avons donc alimenté directement le PCA9685
- Led inversé
Prochain cours : suite du debug de la carte 
--------------------------04/02/22-----------------------------------------
J'ai créé un fichier excel répertoriant les différents tests effectués ainsi que les corrections à apporter sur une prochaine version de la carte.
Le fichier se trouve ici ./Projet_frelons/Debug_carte.xlsx
J'ai pu valider le fonctionnement du PCA9685.
Prochain cours : test de la mesure de la LDR via le MCP3428
				 test du pilotage du 5v et du POWER_SD(Alimentation de la carte SD)
--------------------------10/02/22-----------------------------------------
Note : attention à bien changer les pins SDA et SCL car en général les pins par défaut sont mappées sur 21 et 22.
Dans notre cas SCL : 32, SDA : 33