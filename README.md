# Scripts pour Qubes-os

## Description

Ces Scripts perment d'éffectuer des actions depuis dom0 de façon graphiquei (la plupart avec yad qui est installé nativement dans dom0).

Le script "rebours" permet de lancer un compte à rebours pour la mise en veille prolongée.
Il y aura un conky qui permettra de voir le décompte directement sur le bureau.

### Dans le dossier "Actions sur les Vms":
    - 'select-action-running' qui affiche la liste des Vms en cours d'éxécution.
    - 'select-action-close' qui affiche la liste des Vms éteintes.
    - 'select-action-template' qui affiche la liste des tempplates (quelles soient en cours d'écution ou éteintes).

Dans ces scripts, les actions définies sont juste 
    - Le lancement ou l'arrêt des Vms 
    - Le redémarrage des Vms
    - Le lancement d'un terminal
    - Le lancement de Thunar

Vous pouvez ajouter d'autres actions à votre guise dans la section appropriée.

### Dans le dossier "Manipulation de fichiers":
    - 'copy-from-dom0' qui permet de transférer un fichier depuis dom0 vers une autre Vm (pour l'instant juste celles qui sont en cours d'éxécution) de façon graphique.
    - 'copy-to-dom0' qui permet de tranférer un fichier vers dom0 de façon graphique.

## Installation

1. En ouvrant un terminal dans le dossier contenant et l'éxécutant avec `bash <script>` ou `./<script>`
Note: rendez-le éxécutable d'abord.

2. En tapant le nom du script directement dans un terminal.
    - Rendre le script éxécutable:
    `chmod +x <script>
    - le copier dans le dossier /usr/local/bin ou dans le dossier ~/.local/bin (s'il n'existe pas, créé-le.


