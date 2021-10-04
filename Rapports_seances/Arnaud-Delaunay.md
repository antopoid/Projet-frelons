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
