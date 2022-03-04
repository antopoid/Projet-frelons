----------------------------------------------------Projet-Frelon--------------------------------------------------

---------------------------------------------------Séance : 07/01/2022---------------------------------------------
Objectif : Travail à distance pour tester le bon fonctionnement de la caméra

Pendant cette séance, j'ai travaillé avec Romain Lavenne sur Teams pour tester la caméra. Nous avons procédé à la
mise en place de l'environnement de test avec le logiciel Arduino, mais on a vite été confronté à la difficulté de 
connecter l'ESP32 WROVER avec Arduino lors du téléversement du programme de test. Au début, on a essayé de trouver 
les bibliothèques nous permettant de faire ce test. Ensuite on s'est rendu compte que malgré l'environnement de test 
complet, on arrivait toujours pas à établir la connexion, on a alors vérifié si on avait bien les 2 tensions de 5V 
et 3,3V ce qui était bien correcte. Au final, nous n'avions pas pu résoudre ce problème lors de cette séance.

---------------------------------------------------Séance : 03/02/2022---------------------------------------------
Objectif : Etablissement de la connexion ESP32 WROVER - Arduino et début des tests.

Lors de cette séance, nous avons appris par le prof que le téléversement du programme se faisait manuellement avec 
l'appui des boutons reset et prog, ce qui nous a permis établir la première connexion entre l'ESP32 WROVER et le 
logiciel Arduino. Ensuite il nous a remis la nouvelle carte qui avait fabriqué permettant de piloter tous les 
modules sur une seule carte avec un grand nombre d'entrées/sorties utilisables par l'ESP32 WROVER. En voulant tester 
la nouvelle carte, nous avons vite remarqué des échecs de connexion dû au pin I0 qui n'était connecté à rien et vu 
aussi une erreur dans le schéma au niveau de POWER (car se mord la queue) que nous avons résolu en faisant 2 shunts.
Après nous avons retesté la carte et avons vu que la connexion se faisait automatiquement mais que la LED Verte était 
la seule allumée. Ce qui nous permis de voir qu'on avait inversé la LED Rouge et qui sera rapidement corrigé. C'est 
là que s'arrêtera le projet pour cette séance.

---------------------------------------------------Séance : 04/02/2022---------------------------------------------
Objectif : Câblage de la plaque de test et test de la caméra

Lors de cette séance, nous avons procédé au câblage de la plaque de test afin de vérifier le bon fonctionnement de la 
caméra. Après le câblage, nous avons rencontré un problème au niveau du téléversement manuel du programme de test
(ESP32-WROVER-CAM) car il y avait pas de connexion entre l'ESP32 WROVER et le logiciel Arduino. Il a fallu que nous 
inversons les entrées/sorties de RX et TX pour établir la connexion. Après l'établissement de la connexion, on a vite 
été confronté à un autre problème parce qu'il y avait une erreur de détection de la caméra, ce que nous essayerons 
de résoudre lors de la prochaine séance.

---------------------------------------------------Séance : 10/02/2022---------------------------------------------
Objectif : Finalisation Test Caméra et câblage du servomoteur

Lors de cette séance, nous avons repris le test pour vérifier le bon fonctionnement de la caméra, on s'est rendu compte
qu'il nous manquait le câblage du PDWN de la camera dans notre tableau de correspondance, alors nous avons décidé de 
choisir un pin libre pour le connecter et continuer notre essai. Ensuite nous avons modifié le programme de test pour 
entrer les numéros de pins de notre table de correspondance. Nous n'avons pas pu finir ce projet car la résistance qui 
permettait au ESP32 WROVER d'être relié à l'antenne était brasée à la mauvaise position (vers le bas).Par conséquent, 
l'ESP32 WROVER ne pouvait pas connecter à la camera par wifi. Après avoir signalé le problème au prof, il a dit qu'il 
nous ramenera une antenne de 2,4 GHz pour la séance du 11/02/2022 afin de remedier à cela et continuer le test.

Les numeros de pins entrés pour tester le fonctionnement de la camera :

#if defined(CAMERA_MODEL_WROVER_KIT)
#define PWDN_GPIO_NUM    13
#define RESET_GPIO_NUM   23
#define XCLK_GPIO_NUM    33
#define SIOD_GPIO_NUM    11
#define SIOC_GPIO_NUM    12

#define Y9_GPIO_NUM      7
#define Y8_GPIO_NUM      6
#define Y7_GPIO_NUM      5
#define Y6_GPIO_NUM      4
#define Y5_GPIO_NUM      31
#define Y4_GPIO_NUM      30
#define Y3_GPIO_NUM      29
#define Y2_GPIO_NUM      26
#define VSYNC_GPIO_NUM   10
#define HREF_GPIO_NUM    37
#define PCLK_GPIO_NUM    36

Affichage de la tentative de connexion de l'ESP32 WROVER sur le moniteur arduino :

rst:0xc (SW_CPU_RESET),boot:0x17 (SPI_FAST_FLASH_BOOT)
configsip: 0, SPIWP:0xee
clk_drv:0x00,q_drv:0x00,d_drv:0x00,cs0_drv:0x00,hd_drv:0x00,wp_drv:0x00
mode:DIO, clock div:1
load:0x3fff0018,len:4
load:0x3fff001c,len:1216
ho 0 tail 12 room 4
load:0x40078000,len:10944
load:0x40080400,len:6388
entry 0x400806b4
⸮⸮_⸮⸮⸮⸮⸮&FCnNBJ⸮⸮NBbB⸮B⸮⸮C⸮NBJ$Z⸮NbB⸮NBs J⸮NbBJNBj J⸮N⸮BJ⸮Ng⸮⸮vBfBR⸮JJ⸮gJJÆ[RZRZRZJZ⸮Z⸮⸮⸮ets Jul 29 2019 12:21:46

---------------------------------------------------Séance : 11/02/2022---------------------------------------------
Objectif : Suite Test de la camera et câblage du servomoteur

Lors de cette séance, nous avons recupéré l'antenne de 2,4 GHz avec le prof et nous avons continué notre séance de 
test. Pour savoir si nos câblages ne sont pas bien fait ou si le programme de test n'était pas correcte, 
nous avons testé d'abord ESP32 CAM qui a bien fonctionné ce qui nous a permis de valider le bon fonctionnement du 
du programme de test du modèle AI THINKER ESP32-CAM. Ensuite, nous avons essayé de le retesté sur la camera cablée 
sur notre planche de test en modifiant les pins et en choisissant le modèle WROVER-KIT mais que nous n'avons pas 
encore réussi à faire marcher et que nous continuerons à tester à la séance prochaine.

---------------------------------------------------Séance : 03/03/2022---------------------------------------------
Objectif : Suite Test de la camera

Lors de cette séance, nous avons détecté des erreurs de câblage sur la plaque de test car la numérotation du bornier
relié à la camera était inversée, ce qui nous a poussé à le reprendre. Pendant le test, nous avons rencontré des 
erreurs dû à la mauvaise config des pins de la caméra que nous avons fini par corriger en passant par le debuggage 
du code ligne par ligne, ensuite en regardant notre tableau de correspondance et en entrant les bons pins. En plus 
de ça, un autre petit problème lié à la faible alimentation du ciruit affichait une erreur "Brownout" que nous avons 
également résolu en le connectant avec une source de tension supplémentaire (batterie d'environ 5V). Finalement nous 
avons terminé cette séance sur une erreur de compilation dû au faible espace mémoire pour pouvoir stocker les variables 
globales et locales (sketch too big).

---------------------------------------------------Séance : 04/03/2022---------------------------------------------
Objectif : Suite Test de la camera

Lors de cette séance, nous avons résolu le problème lié à l'espace mémoire en la partionnant pour l'accorder 3MB 
pendant la compilation. Après cette correction, la caméra parvenait à s'initialiser correctement et à nous afficher 
l'url (http:"192.168.10.205") pour que nous puissions nous connecter dessus par wifi. Sauf que la camera n'affichait 
pas une bonne image parce qu'on avait pas connecté le GND du circuit relié à notre caméra au GND fournit par l'ESP32-
WROVER-KIT. Après cette modification, on obtenait la bonne image sans être en mésure de lancer le stream à cause du 
navigateur qu'on utilisait. Il a fallu que l'on relance le stream sur un autre navigateur (Brave Browser) pour qu'il 
marche, ce qui nous a permis de valider le bon fonctionnement de la caméra. A la fin de cette séance, nous avons mis 
à jour le schéma de notre circuit afin qu'un nouveau circuit soit prochainement fabriqué sans erreur de connexion.

---------------------------------------------------Séance : 11/03/2022---------------------------------------------
Objectif : Câblage du servo-moteur.