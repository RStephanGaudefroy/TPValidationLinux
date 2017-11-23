#!/bin/bash

# Pour les test suivant je suppose qu'on se retrouve dans le repertoire Bureau
# Test de l'existence du dossier d'installation de VirtualBox
if [ -d "../VirtualBox VMs" ]
then
    echo "-----------------------------------------------------------------------------------"
	echo "| L'installation de VirtualBox existe déja ! Je passe à l'installation de Vagrant |"
    echo "-----------------------------------------------------------------------------------"
else
	echo "Lancement de l'installation de virtualBox...."
    sudo apt-get -y install virtualbox-qt
fi

# Test de l'installation de vagrant
echo "---------------------------"
echo "| test installation de vagrant |"
echo "---------------------------"
if [ -d "../.vagrant.d" ]
then
    echo "-----------------------------------------------------------------------------------------"
	echo "| L'installation de Vagrant existe déja ! Je passe à l'initialisation de la Box vagrant |"
    echo "-----------------------------------------------------------------------------------------"
else
    echo "----------------------------------------------"	
    echo "| Lancement de l'installation de vagrant.... |"
    echo "----------------------------------------------"
    sudo apt-get -y install vagrant
fi

if [ ! -f Vagrantfile ]; then
    vagrant init 1> /dev/null
    echo $boxChoice    
    echo "Le fichier Vagrantfile a été généré !"
    
else
    echo "Un Vagrantfile existe déjà dans ce dossier !"
fi


# Choix de la Box pour vagrant
echo "---------------------------------------------------"
echo "| Quel Box souhaitez vous utilisez pour Vagrant ? |"
echo "---------------------------------------------------"
echo -e "\t 1. xenial64"
echo -e "\t 2. trusty64"
read -p "Votre choix : (autre touche = par défaut : xenial64): " boxChoice
if [ $boxChoice = "1" ]
then
    sed -i -e 's/base/ubuntu\/xenial64/g' Vagrantfile
    echo "Le fichier VagrantFile à été modifié pour la box xenial64"
elif [ $boxChoice = "2" ]
then
    sed -i -e 's/base/ubuntu\/trusty64/g' Vagrantfile
    echo "Le fichier VagrantFile à été modifié pour la box trusty64"
else 
    sed -i -e 's/base/ubuntu\/xenial64/g' Vagrantfile
    echo "Le fichier VagrantFile à été modifié pour la box xenial64 par défaut"
fi


# Initialisation de Vagrant
vagrant init
vagrant up

# Affichage des status en cours
echo "--------------------------------------------------------------------------"
echo "| Status des processus en cours...                                       |"
echo "--------------------------------------------------------------------------"
vagrant global-status

# ssh
vagrant ssh







