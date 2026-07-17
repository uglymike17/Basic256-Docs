---
title: "Techinformation"
sidebar_label: "Techinformation"
---

## Le coin des Développeur et des aspects Techniques

### Généralités

Les programmes en BASIC-256 sont tout d’abord compilés en “byte code” en utilisant LEX et YACC, et ensuite exécutés en interprétant le “byte code” dans une “stack machine”. Ajouter une fonction c’est juste ajouter un “byte code”, en disant à LEX et YACC comment en traiter la syntaxe, puis coder les instructions appropriées dans l’interpréteur. Si vous n’avez jamais codé un compilateur ou un interpréteur, le fonctionnement interne de BASIC-256 se révélera très formateur pour les bases ce type de travail.

Il faut malgré tout garder à l’esprit que BASIC-256 est un langage d’apprentissage destiné aux débutants (voir aux enfant de 7 à 9 ans), on s’évertuera donc à ne pas aborder les concepts avancés. Bien qu’il serait intéressant de faire de BASIC-256 un langage de haut niveau puissant, il faut garder à l’esprit qu’il existe déjà de meilleurs langages qui remplissent cette tâche: Python, Scheme…

### A faire

1.  Vérification des erreurs en temps réel dans l’éditeur (analyse des lignes pendant la saisie)

### La vie d’un programme BASIC-256

1.  Les mots clés du programme BASIC sont décodés par LEX
2.  LEX fournis ces derniers à YACC
3.  YACC détermine si la syntaxe de la ligne est valide. Si c’est le cas, il ajoute les “byte codes” appropriés dans le programme “byte-codé”
4.  Si aucune erreur de syntaxe apparaît, la partie C++ du programme interprète les “byte code” un par un en utilisant une “stack machine”
5.  Les erreurs d’exécution stoppent le déroulement normal du programme et affichent un message d’erreur à l’écran.

### L’affichage Graphique

Toutes les fonctions graphiques travaillent dans une mémoire tampon qui est ensuite utilisée pour mettre à jour l’affichage immédiatement après chaque opération. Cette façon de procéder est intentionnellement inefficace. La méthode “rapide” consisterait à avoir une tâche séparée s’occupant de générer ce qu’il faut afficher qui appellerait une routine d’affichage quand cela serait nécessaire, ou que ce soit la routine d’affichage qui s’occupe de générer ce qu’il faut afficher.

Ceci est la parfaite illustration des concessions faite dans BASIC-256 afin de garder les choses le plus simple possible. On vise ici un public d’enfants (ou de novices) qui souhaitent voir les points graphiques s’allumer sur l’écran sans avoir à expliquer le “double-buffering” ou le multitâche. Cette façon de procéder permet de créer des jeux comme “Pong” qui testent les collisions en utilisant des formules géométriques de base, de dessiner une balle et des raquettes avec une simple boucle.

Remarque: Afin d’accélérer l’affichage pour les enfants ou débutants souhaitant faire des programmes plus avancés, le mode [FASTGRAPHICS](./fastgraphics.md) a été ajouté. Dans ce mode l’affichage sera mis à jour seulement quand le programme BASIC utilisera la commande [REFRESH](./refresh.md). Cela permettra de bénéficier du “double-buffering” sans avoir à en maîtriser tout les aspects.
