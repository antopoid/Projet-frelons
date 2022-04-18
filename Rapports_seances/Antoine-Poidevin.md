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
---------------------------------------------------------------------------
--------------------------10/02/22-----------------------------------------
Cette scéance etait dediée au test et à la configuration du MCP3428:
- Nous avons commencé par verifier si les pins sur la carte de test correspondait bien au pins sur eagle grace à des tests de continuités.
- Nous avons ensuite verifié si les alimentations relié au mcp fontcionne, les voltages sont bons, le mcp reagi correctement. 
- en activant les bonnes sorties sur le PCA9685, on active sont alimentation, le code est fonctionnel et on arriver a bien affiché les entrées du MCP3428.
- (il faut faire attention les pins SDA et SCL ne sont pas les memes que ceux par defaults sur une ESP32)
- le convertisseur reagi correctement, avec une LDR le signal est bien convertie. nous avons stocké les valeurs.
Prochaine sceance nous testons la camera.
---------------------------------------------------------------------------
--------------------------11/02/22-----------------------------------------
Aujourd'hui on test la camera sur le PCB de test (carte imprimée)
- on commence par telecharger la bonne librairie dediée a l'esp32 et compatible avec le AIthinker de base. (espressif ici en l'occurence) 
- on se rend donc sur le site de espressif pour voir comment ils ont crée la librairie et pour quel carte.
- un exemple est fournis dans la librairie "CameraWebServer" il est bie commenté et nous permet de choisir sur quel type d'esp32 on souhaite l'utiliser.
- sachant que l'on s'est basé sur le cablage de l'esp32-cam de aithinker et que l'on a créé notre carte de test sur ce modele alors 
on choisie "#define CAMERA_MODELAI_THINKER // Has PSRAM" important pour le choix de la PSRAM, c'est une memoire vive supplementaire utilisé par l'esp32 en SPI.
- le proggrame correspond a un server web qui se connecte sur un point wifi et heberge une page web qui elle meme affiche en temps réel ce qui se passe devantr la camera (avec differentes options)
- Malheureusement le branchement de la nappe est inversé avec le mappage des pins, au vu de la taille du connecteur on ne peut pas le dessouder ni intervenir dessus.
- Nous allons donc pour l'instant nous focaliser sur la carte de test avec la camera separée afin de trouver le bon cablage et de trouver tout les problemes auxquelles on pourrait etre confrontés.
Prochaine sceance j'aide gilbert et arnaud poir la camera et j'aide romain avec la carte SD
---------------------------------------------------------------------------
--------------------------03/03/22-----------------------------------------
Scéance dedié à essayer de faire fonctionner le module de carte SD sur la carte imprimée.
- on commence par chercher differente librairie sur le web, afin de trouver une librairie qui nous permet d'acceder au fichier source pour modifier les pins de bases car nous avons changer l'organisation des pins qui se superpose avec la camera etc.
- Nous avons donc commencés par essayer la librairie sur L'esp32 cam et ça fonctionne apres quelques modifs dans le code sur les pins.
(un ficher est créé puis supprimé, pareil pour un dossier, on ecrit ensuite dans un fichier)
- Ensuite on essaie la meme chose sur la carte imprimé, ça ne fonctionne pas, on essaie de debugé comme on peut.
- on decouvre que les pins sur la carte sont inversé et qu'il va falloir trouver une alternative.
- on essaie de souder le support SD à l'envers mais sans succès car il y a un court circuit.
Prochain cours on investie plus profondement sur ce sujet.
---------------------------------------------------------------------------
--------------------------04/03/22-----------------------------------------
- j'ai aidé romain pour essayer de faire fonctionner la carte SD sur la nouvelle carte imprimé nue 
- j'ai utilisé une nappe fournis par Mr peter pour faire fonctionner la camera car les pins sont inversé, il ya tres peu de documentations fournis sur internet.
- Mr peter ma donc fournis deux cartes plus facile a maitriser qui permettent de suivre exactement les pins utilisés.
- j'ai donc soudé les branchement dessus des deux cotés, et j'ai essayé d'uploader du codes sur l'esp32 cam afin d'essayer.
- sans succés pour l'instant, j'investirai plus profondement a la sceance suivante afin de trouver les problemes et branchement adequats.
- j'ai aussi aidé arnaud et gilbert afin de televersé avec succés la carte sur L'esp32 de test, nous avons eux beaucoup de problemes en tout genre.
- deja le televersement n'etait pas possible a la base, ensuite la ram etait mal configurée, ensuite, il y avait un court circuit qui faisait redemarrer en boucle l'esp32 puis la camera etait mal branché, au final l'esp32 demarre et arrive a afficher ce qui se passe devant la camera.
- prochaine sceance je dois terminer mes branchement sur la carte imprimé avec la camera afin de corriger le schema pour une impression futur.
---------------------------------------------------------------------------
--------------------------29/03/22-----------------------------------------
- Mr peter nous a gentiment fournis deux nouvelles cartes modifié a nos souhait afin de corriger nos erreurs precedentes tels que l'inversion des pins sur la nappes de la camera ainsi que la SD.
- Création d'un repertoire specialement dedié au executable de test pour les differentes parties distinctes de la carte.
- j'ai trié quelques partie de notre repository github
- apres quelques tests avec nos precedents codes utilisé sur les cartes precedentes il se trouve que le MCP et le PCA fonctionne correctement 
- les leds et la ldr reagissent egalement correctement
- Apres de nombreux test differents avec nos precedents programmes enregistrés, la carte SD a finalement reussi a fonctionner, nous en avons tout de meme deduis une perte de tension significative quand la carte SD est branché.
- Arnaud et gilbert ont quand à eux tentés de faire fonctionner comme ils le pouvaient la camera sur la carte, avec quelques legers debeugage et quelques avancés. J'ai tenté de les aider a quelques reprise.
- prochaine scéance nous allons investiguer cette baisse de tension du à la carte SD et tenter de faire fonctionner de nouveau la camera.

