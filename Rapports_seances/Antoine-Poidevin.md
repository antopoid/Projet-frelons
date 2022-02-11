--------------------------27/08/2021---------------------------------------
Creation repo git 
Visite des ruches 
Attribution des roles
Decouverte de l'ancien projet 
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
Réunion ave  le groupe d'ingenieur de monsieur peter concernan le projet general de la ruche
---------------------------------------------------------------------------
--------------------------23/09/21-----------------------------------------
Renseignement sur les differentes cartes ESP32 disponible et des differences entres les cartes (IO etc)
Aide a la completion du excel concernant les io de la futur carte
Rencontre avec d'anciens eleves concernant un projet similaire sur la detection de forme de vie differentes dans une ruche.
---------------------------------------------------------------------------
--------------------------01/10/21-----------------------------------------
Premier placement des composants sur les cartes de tests
prechauffage des fours et application de la pate à souder 
brazage des cartes avec succés 
---------------------------------------------------------------------------
--------------------------22/10/21-----------------------------------------
Participation a la creation du schema de la carte sur eagle
Test de televersement sur les cartes de test avec l'ESP32 de soudé, succés
test du fonctionnement de la carte de test avec un serveur web créé par l'esp32 (wifi)
---------------------------------------------------------------------------
--------------------------12/11/21-----------------------------------------
Réunion avec l'equipe pour reparler de la carte, point avec monsieur peter et remise en question de certains points cruciaux
nettoyage du repertoire racine git du projet 
recherches internet pour des solutions à nos problèmes 
---------------------------------------------------------------------------
--------------------------Fin 2021 - début 2022----------------------------
M Peter à finalisé le routage du PCB, le schéma se trouve ici : ./Projet-frelons/Schema_carte/Final
Le PCB a été envoyé en production
--------------------------07/01/22-----------------------------------------
Cours à distance sans materiel
---------------------------------------------------------------------------
--------------------------03/02/22-----------------------------------------
Nous avons reussi a re-faire fonctionner la carte de test esp32, le televersement automatique ne fonctionne plus, il faut utiliser les boutons PROG et RST.
la carte imprimé fonctionne mais nous avons du faire quelque modifications ( relié l'I0 à la main par exemple)
Le PCA9685 gere lui meme sont alimentation il ne peut donc jamais etre alimenté comme il faut pour l'instant.
Les leds etaient soudées à l'envers, nous les avons retournées.
---------------------------------------------------------------------------
--------------------------04/02/22----------------------------------------- 
Nous avons televersé du code et testé le fonctionnement du PCA9685
les sroties PWM fonctionne bien, les leds aussi, Les tensions sont bonnes, nous avons trouvé et testé les bonnes librairies adequates.

Prochaine sceances nous allons tester le MCP