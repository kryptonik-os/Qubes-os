#!/bin/bash

SELECTED_VM=$(qvm-ls --running | grep -v 'dom0' | tail -n +2 | awk '{print $1}' | yad --title "Vms en cours d'éxecution" --list --column "Sectionner une Vm :" --height=300)
echo "Valeur sélectionnée : $SELECTED_VM"

SELECTED_VM=${SELECTED_VM%%|} #supprimer le caractere de fin de chaine
SELECTED_VM=${SELECTED_VM%%$'\n'} #supprimer le caractere de fin de ligne
echo "Valeur sélectionnée aprés suppression des caractéres: $SELECTED_VM"

if [ -n "$SELECTED_VM" ]; then
	qvm-run -a $SELECTED_VM xfce4-terminal
fi
