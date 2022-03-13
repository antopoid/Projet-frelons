Approche des schémas de l'ESP 32 :
  - Définition des entrées et des sorties à utiliser
  - Choix des modules utilisés : Camera, Core
  - Définition de l'alimententation : utilisation du 5V?


Entretien avec des apiculteurs :
  - Rapport de leurs travaux (voir diapo)
  Prise d'une photo 320x260, reduction en 80x60 et en noir et blanc, detection de la tache la plus sombre (essai avec faux frelon concluant)
  Transfert des coordonnées de la tache aux servomoteurs de la tourelle et tir
  Canon à bille : Montage droit (zone restreinte de tir), frelon touché au tir (video jointe)
  Laser : visée laser avec reflecteur (attente de la reflexion), tir : puissance de 40% à 100%, Tension 12V, Laser 5W
  Implémentation du bus I2C pour la communication
  Ajout d'un potientiomètre pour régler la fréquence du micro pour la detection du frelon ou modification en dur dans le programme
  Amélioration à faire : choix détection fréquence filtre passe bande ou FFT
  Zone de tir limitée avec grillage
  Emplacement de l'alimentation des servomoteurs à définir 
  Valeur : 5V servomoteurs, 12V laser et 3,3V Carte ESP32 panneau solaire envisageable pour recharger la batterie





01/10/2021 :

- Analyse des données du rapport de projet du groupe de l'année dernière :
	+ Pilotage du laser en variant le courant (diode trop sensible aux variations de tension)
	+ Utilisation de la diode OSRAM PLPT9 450LA_E Blue Laser Diode
	+ Caractéristiques diode : 2.5A, 4.3V, 3W et longueur d'onde 447nm
	+ Utilisation du régulateur de tension "Buck" NCL30160 pour l'alimentation (réglage précis du courant), schéma électrique fournie
	+ Valeur des composants externes au régulateur afin de déterminer la valeur du courant, possibilité de diminuer l'intensité avec un signal PWM
	+ Utilisation lentilles de verre pour focaliser le laser en un point et ventilateur pour dissipation de la chaleur
	+ Frelon brûlé en quelques secondes


07/01/2021 :

Test Programme sur l'ESP32 CAM. 
Diffilcultés rencontrées sur l'IDE ARDUINO et la communication entre l'ESP32 WROVER et la caméra. 
Système de caméra à revoir sur l'aspect software.

03/02/2022 - 04/02/2022 :

Reprise des tests de communication entre l'ESP32 et l'ordinateur de programmation 
Problème trouvé : le module de communication USB série C n'arrive pas à téléverser automatiquement et rencontre des diffilcultés lors du téléversement manuel
Conclusion : Penser à faire la manip lors des tests de programmation

Terminer la partie d'alimentation des cartes avant de se concentrer sur le laser et les moteurs
Cablage ESP32 avec carte caméra avec test de communication Manque de Pin SDA SCL et CA_PWM sur le schéma
Revoir le schéma pour modification

10/02/2022 :

Reprise des tests sur breadboard communication ESP32 et caméra 
Recherche des pins manquants (PWDN) : essai de PWDN sur le Pin IO14 ESPWROVER
Utilisation du programme trouvé sur le git (Arduino/test camera ESP32/CameraWebServer) pour tester la communication
Modification du programme pour l'adapter au test (N° de pins, etc..).
Résultat du test : Le téléversement est concluant mais la connexion WiFi n'est pas établie : récupération d'une antenne WiFi 2,6 GHz 
Test alimentation servomoteurs 5V puis programme Arduino pour commande angle avec la PWM

10/02/2022 - 11/02/2022 :

Reprise des tests sur breadboard communication ESP32 et caméra 
Recherche des pins manquants (PWDN) : essai de PWDN sur le Pin IO14 ESPWROVER
Utilisation du programme trouvé sur le git (Arduino/test camera ESP32/CameraWebServer) pour tester la communication
Modification du programme pour l'adapter au test (N° de pins, etc..).
Résultat du test : Le téléversement est concluant mais la connexion WiFi n'est pas établie : récupération d'une antenne WiFi 2,6 GHz 
Test alimentation servomoteurs 5V puis programme Arduino pour commande angle avec la PWM
Tests concluants sans programme Arduino Tests à faire avec la commande

Antenne WiFi obtenue, reprise des tests avec la caméra
Test avec le module caméra pour vérifier la caméra, Résultat concluant : la caméra est opérationnelle
Reprise du code pour avoir une base vierge et un programme avec les modifications sur le répertoire Git :
- base vierge : Arduino/test camera ESP32/Test_ESP32_CAM

Problème de sens des Pins de la caméra, reprise du câblage de la breadboard et tests sans succès A continuer sur la séance suivante

03/03/2022 - 04/03/2022 :

- Reprise du câblage de la carte WROVER_CAM + tests téléversement programme
	Résultat test : Connexion réussie mais erreur : Brownout detector was triggered
	Solution : Brancher une alimentation supplémentaire

- Reprise de test téléversement
	Résultat test : erreur Core 1 panic'ed (LoadProhibited) exception was unhandled
	Test du code partie par partie en utilisant "while(1)" problème trouvé sur la partie concernant la configuration de la caméra ligne : 
	Problème trouvé : mauvais numéro de Pin dans la config Excel à Modifier

- 2e tentative test téléversement
	Résultat test : erreur sketch too big
	Problème : Mémoire Arduino > Mémoire ESP 32 réglage sur le logiciel : Outils/Partition Scheme -> Huge ATTP (NO OATP

- 3e tentative test téléversement
	Résultat test : erreur esp_camera_fb_get(): Failed to get the frame on time!
	Solution : réduction de la fréquence de 20MHz à 10MHz

- 4e tentative test téléversement
	Résultat test : connexion établi avec la caméra capture image OK mais pas d'image sur le stream
	Solution : Mettre à jour le navigateur utilisé pour accéder au contrôle de la caméra

- 5e tentative test téléversement
	Résultat test : Stream et capture image fonctionnels 

- Misé à jour du schéma de l'ESP WROVER : ESP_CAM_VVN_v5.sch
	Ajout de la CA_PWDN sur IO14, inversion des bornes TX et RX et inversion des bornes du bornier de la caméra (de 1 -> 24 à 24 -> 1)

11/03/2022 :

- Début partie Moteurs pas à pas : Câblage terminée et tests programme contrôle moteur
	Résultat test : Moteurs tourne mais de façon inégale
	Solution : Modifier le programme pour faire une rotation réstreinte
	
- 2e test rotation
	Résultat test : Rotation toujours inégale
	Revoir le programme utilisé
