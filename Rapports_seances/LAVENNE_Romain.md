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
Nous avons aussi brasé des esp32 sur des cartes de test (carte de report)
---------------------------------------------------------------------------
--------------------------22/10/21-----------------------------------------
Réalisation du schéma de la carte avec l'aide du fichier réalisé précedemment
L'esp32, la sd card, la caméra sont câblés.
Il reste à vérifier via des tests sur table (avec les cartes faites précedemment) que le schéma est correct
---------------------------------------------------------------------------