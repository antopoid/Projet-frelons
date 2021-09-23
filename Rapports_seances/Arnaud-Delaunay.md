Approche des schémas de l'ESP 32 :
  - Définition des entrées et des sorties à utiliser
  - Choix des modules utilisés : Camera, Core
  - Définition de l'alimententation : utilisation du 5V?


Entretien avec des apiculteurs :
  - Rapport de leurs travaux (voir diapo)
  Prise d'une photo 320x260, reduction en 80x60 et en noir et blanc, detection de la tache la plus sombre (essai avec faux frelon concluant)
  Transfert des coordonnées de la tache aux servomoteurs de la tourelle et tir
  Canon à bille : Montage droit (zone restreinte de tir), frelon touché au tir (video jointe)
  Laser : visée laser avec reflecteur (attente de la reflexion), tir : puissance de 40% à 100%
  Implémentation du bus I2C pour la communication
  Ajout d'un potientiomètre pour régler la fréquence du micro pour la detection du frelon ou modification en dur dans le programme
  Amélioration à faire : choix détection fréquence filtre passe bande ou FFT
  Zone de tir limitée avec grillage
  Emplacement de l'alimentation des servomoteurs à définir 
  Valeur : 5V servomoteurs, 12V laser et 3,3V Carte ESP32 panneau solaire envisageable pour recharger la batterie
