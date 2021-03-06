**_Séance 1 : 10/09/2020_**

Prise de connaissance du sujet et recherches sur internet de projet similaire pour voir les pistes de départ.
Recherches sur les caméras/laser.
Visionnage de documentaire sur les frelons asiatiques pour avoir des infos comme leur mode/période de chasse, taille etc.


**_Séance 2 : 25/09/2020_**

Recherches sur la température léthale d'un frelons (47°C) et des lasers permettant d'atteindre cette température.
Recherches sur la fréquence des battements d'ailes des abeilles (200-250Hz).
Lecture de forum sur la reconnaissance d'image avec le fonctionnement et les github.

Liens utiles :
https://www.inaturalist.org/ = image insectes
https://www.mca-ingenierie.fr/fr/blog/271
https://forum.arduino.cc/index.php?topic=579623.45
https://github.com/snoop2head/study_in_yellow


**_Séance 3 : 08/10/2020_**

Test du micro avec Mattei pour plus tard implémenter une fonction de reconnaissance des frelons par leur bruit afin de ne pas laisser la reconnaissance par image tourner tout le temps.
Le micro marche.
Implémentation d'un code FFT pour traiter le signal et l'adapter aux fréquences souhaitées.


**_Séance 4 : 22/10/2020_**

La FFT implentée marche.
Recherche de module laser arduino assez puissant pour brûler les ailes d'un frelons, pas trouvé -> solution faire un laser brûleur DIY avec des laser de lecteur blu-ray.
Test du contrôle des moteurs pas à pas avec un joystick (ça marche).
Réalisation d'une pièce 3D pour fixer le laser de test aux moteurs pas à pas.


**_Séance 5 : 19/11/2020_**

Prise de connaissances du fonctionnement des servomoteurs et suivi de l'assemblage fait par Lucas Bagrowski et test de la pièce 3D réalisé à la séance précédente.
Aidé Mattei avec la detection sonore des frelons, cela semble compliqué car les fréquences de battements d'ailes de frelons sont assez similaires à ceux des abeilles. Une optimisation du code et pourquoi un micro plus performant pourraient aider à avoir un système plus fiable.


**_Séance 6 : 26/11/2020_**

Prise de connaissance d'un laser assez puissant pour neutraliser un frelon. Il semblerait qu'un module laser assez puissant pour réaliser cela est assez cher.
J'ai donc visionné des vidéos sur des fabrications de laser DIY (DO IT YOURSELF) assez puissant pour neutraliser un frelon.
Car le problème est d'atteindre la température léthale (environ 47°C) le plus rapidement possible afin que le frelon n'ait pas le temps de tuer des abeilles.
Liens utiles : https://www.instructables.com/How-to-make-a-burning-laser-for-CHEAP/
Ce site explique pas à pas les étapes à suivre pour réaliser un laser capable de graver sur du bois. La prochaine étape sera l'élaboration du laser.

**_Séance 7 : 03/12/2020_**

Test (soudure et mise sous tension) de diodes lasers et de drivers fournis par M.Peter. Malheureusment nous avons branché la diode dans le sens inverse et nous l'avons brûlée.
Il semblerait qu'il n'y ait pas un sens prédefini dans les pins des diodes, ce que nous avons remarqué en comparant plusieurs datasheet.

**_Séance 8 : 04/12/2020_**

Mattei a réussi à récuperer 2 diodes d'anciens lecteur DVD. Nous les avons donc soudées aux drivers fournis à la séance précédente et nous les avons testés.
Les diodes fonctionnent mais ils sembleraient qu'elles ne soient pas suffisament puissantes pour neutraliser les frelons asiatiques. Le point lumineux est trop large
la lumière n'est pas assez focalisé en un seul point précis ce qui implique une baisse de puissance. Il faudrait un système de lentilles permettant de concentrer le
faisceau lumineux en un point bien précis afin d'éviter de toucher des abeilles par erreur.

**_Séance 9 : 10/12/2020_**

Démontage de consoles Playstation 3 afin de récuperer des diodes blue-ray pour les comparer aux diodes laser rouge qu'on a eu l'habitude de manipuler.

**_Séance 10 : 17/12/2020_**

Assemblage boitier optique et laser bleu avec Mattei pour bruler les frelons, les tests sont concluants car les frelons fument. Cependant nous n'avons pas de lunettes de protection donc les tests étaient limités.

**_Séance 11 : 08/01/2021_**

Préparation de la soutenance.

**_Séance 12 : 15/01/2021_**

Soutenance de projet.

**_Séance 13 : 29/01/2021_**

Réception des lunettes de protections. Nous avons pu réaliser des tests dans des meilleures conditions pour déterminer le courant a envoyé dans le laser pour qu'il soit le plus efficace. Nous avons une première valeur à 700 mA.

**_Séance 14 : 12/02/2021_**

Suites des tests du laser et montage sur la tourelle pour vérifier que le poids ne pose aucuns problèmes.
Début du développement d'un programme permettant de créer des images de tests avec Micha.

**_Séance 15 : 19/02/2021_**

Suite du développement du programme avec Micha.

**_Séance 16 : 05/03/2021_**

Fin du développement du programme. Il marche bien, et en le mettant dans un excel on peut voir l'image correspondant a notre code composé de 0 et 1 permettant la création de la tâche noire.

**_Séance 17 : 12/03/2021_**

Maintenant que le code marche, il nous faut l'optimiser avec Micha.

**_Séance 18 : 19/03/2021_**

Optimisation du code.

**_Séance 19 : 02/04/2021_**

Mise en commun de tous nos programme pour tester le projet dans son ensemble.

**_Séance 20 : 15/04/2021_**

Préparation de la soutenance.


