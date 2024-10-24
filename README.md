

## Description

Ces Scripts permettent d'éffectuer des actions depuis dom0 de façon graphiquei (la plupart avec yad qui est installé nativement dans dom0).

Le script **rebours** permet de lancer un compte à rebours pour la mise en veille prolongée.
Il y aura un conky qui permettra de voir le décompte directement sur le bureau.
 

 **1. Dans le dossier "Actions sur les Vms":**
_Il y a 3 Scripts:_
- **select-action-running** qui affiche la liste des Vms en cours <u>d'éxécution.
 - **select-action-close** qui affiche la liste des Vms <u>éteintes.
  - **select-action-template** qui affiche la liste des templates (quelles soient en cours <u>d'écution ou éteintes).

Dans ces scripts, les actions définies sont justes:
     - Le lancement ou l'arrêt des Vms 
    - Le redémarrage des Vms
    - Le lancement d'un terminal
    - Le lancement de Thunar

**_Note_**: Vous pouvez ajouter d'autres actions à votre guise dans la section appropriée.

**1. Dans le dossier "Manipulation de fichiers":**
   - **copy-from-dom0** qui permet de transférer un fichier depuis dom0 vers une autre Vm (pour l'instant juste celles qui sont en cours d'éxécution) de façon graphique.
   - **copy-to-dom0** qui permet de tranférer un fichier vers dom0 de façon graphique.

## Installation

 **1.** Rendez le script éxécutable:
    

> `chmod +x <script>`

 **2.** éxécutez le script dans le terminal:
   

> `bash <script>`
ou
 `./<script>`

 ***Note:*** Vous pouvez le copier directement dans le dossier `/usr/local/bin` ou dans le dossier `~/.local/bin/` (s'il n'existe pas, créez-le.) Pour le lancer dans le terminal depuis n'importe quel dossier en tapant juste son nom.
