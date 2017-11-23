Bonjour et bienvenu sur le readme du TPValidationLinux

Ce repository Github contient deux fichiers :
	- le fichier texte readme
	- le fichier scriptStephane.sh

Avant le lancement du fichier scriptStephane.sh vous devez :
	Soit télécharger le zip de ce repository ou alors le cloner
	
	Lorsque vous avez récupérer les fichiers, le fichier scriptStephane.sh doit se trouver dans le dossier Bureau avant d'être éxécuté.

	ouvrez un terminal dans votre linux et taper "bash scriptstephane.sh" pour le lancer

Déroulement du bash

	1 - vérification d'une installation du logiciel virtualBox : si celui-ci existe déjà alors on passe à létape 2, sinon l'installation débutera automatiquement sans intervention de votre part.
	2 - vérification de l'installation du logiciel vagrant : si celui-ci existe on passe à l'étape 3, sinom l'installation débutera automatiquement sans intervention de votre part.
	3 - initialisation du fichier vagrantfile
	4 - choix de la box pour Vagrant : 2 choix possibles : 1-xebnial64 ou 2-trusty64- autre touche = choix numéro 1
	5 - initialisation de vagrant
	6 - Affichage du status des processus en cours
	7 - lancement du vagrant SSH pour commancer à travailler

	pour quitter la console SSH : entrez la commande exit

