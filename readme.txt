-- NOTICE DE LA BASE DE DONNÉES DE GESTION DE L'ENFER --

Vous êtes Satan. Vous devez gérer au mieux votre royaume et vous avez pour cela mis en place une base de données permettant de vous y retrouver. Il faut que
les humains pêcheurs puissent se faire torturer selon leur religion (ou non). Ce qui veut dire dans l'endroit de l'enfer cité dans leurs textes saints et par les créatures
présentent dans ces dits textes.

Le schéma de votre base de données est à retrouver dans le fichier nommé --> 'from_hell.mwb'. Ce fichier comporte :

Votre base contient 3 tables principales (de couleur jaune) :
	- humans : permettant de renseigner les informations des résidents de votre royaume ;
	- hell_staff : permettant de renseigner les informations de vos subordonnés (ceux qui torturent les pêcheurs);
	- hell_places : permettant de renseigner les informations des différentes parties de votre royaume (différentes selon les religions).

Les tables satellites sont les suivantes (de couleur bleue) :
	- civilizations : informations sur la civilisation du pêcheur ;
	- country_codes : le code 3 lettres du pays des humains ;
	- creatures : informations sur la race des créatures à votre service ;
	- ranks : le grade de vos subordonnées (vous aimez l'ordre quasi militaire) ;
	- religions : liste de toutes les religions des humains (et dieu sait qu'il y'en a) ;
	- tortures : liste de tous les supplices connus ;
	- types : nature de l'endroit (ex : volcan, lac incandescent, donjon, plaine).

Trois tables de liaison (de couleur verte) :
	- une liant les religions aux civilisations ;
	- une liant les lieux des enfers, les religions et les créatures : un lieu existe dans plusieurs religions, de même pour les créatures sont présentes dans plusieurs religions et dans plusieurs lieux des enfers ;
	- une liant les pays et les civilisations.

Deux vues sont disponibles :
	- une permettant de savoir où un humain se trouve dans votre royaume ;
	- une permettant de savoir quelle créature s'occupe de quel humain.	

Dans la partie Routines :
	- vous y trouverez les dix requêtes demandées.

Dans la partie Script :
	- vous y trouverez les dix requêtes avec la question posée en français.	



-- FICHIER SQL --

Le fichier nommé --> 'load_data.sql' correspond à l'injection de données dans votre base de données.
La première requête se fait via un INSERT INTO dans la table 'religions'.
La seconde se fait via un LOAD DATA INFILE du fichier 'tortures_examples.csv'. Les données, présentes dans ce fichier csv, seront injectées dans la table 'tortures'.



-- FICHIER CSV --

Une liste de 10 supplices à injecter dans la base via le fichier 'load_data.sql'.


Merci d'en parler auprès de Dieu.
Bien à vous, Mr. Satan.		