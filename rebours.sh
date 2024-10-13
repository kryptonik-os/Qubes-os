#!/bin/bash

# Demande à l'utilisateur de saisir une durée en secondes
DUREE=$(yad --entry --title="Compte à rebours" --text="Veuillez entrer la durée du compte à rebours en secondes:")

# Vérifie si l'utilisateur a annulé la saisie
if [ $? -eq 1 ]; then
    yad --info --title="Saisie annulée" --text="Saisie annulée."
    exit
fi

# Vérifie si l'entrée est un nombre
if ! [[ "$DUREE" =~ ^[0-9]+$ ]]; then
    yad --error --title="Erreur" --text="Veuillez entrer un nombre valide."
    exit 1
fi

# Convertir la durée en minutes
DUREE=$((DUREE * 60))
#########################################################################

# Lancer la fenêtre de progression
{
    for ((i=DUREE; i>0; i--)); do

        # Mettre à jour la barre de progression
	PERCENTAGE=$(((DUREE - i) * 100 / DUREE))

        echo "$PERCENTAGE"
        sleep 1
    done
} | yad --progress --title="Compte à rebours" --text="Décompte en cours..." --percentage=0 --button="Annuler":1 --auto-close

##########################################################################

# Vérifie si l'utilisateur a annulé le décompte
if [ $? -eq 1 ]; then
    exit
fi

#############################################################################

# Commande

systemctl suspend

# Afficher un message de fin
#yad --info --title="Compte à rebours terminé" --text="Le compte à rebours est terminé !"

