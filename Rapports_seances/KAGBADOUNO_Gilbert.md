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
