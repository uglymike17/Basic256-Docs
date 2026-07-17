---
title: "Removedfeatures"
sidebar_label: "Removedfeatures"
---

## Fonctionnalités et Instructions enlevées

Il apparaît souvent, lors de l’évolution d’un programme (et de beaucoup de systèmes), que des fonctionnalités introduites depuis un certain temps ne soient plus nécessaires, ou qu’elles doivent évoluer radicalement pour permettre au système dévoluer. Cette page liste cette catégorie de changements.

| Fonctionnalités et Instructions enlevées |  |  |
|----|----|----|
| Version | Instruction(s) | Discussion |
| 0.9.9.26 | **color** *red*, *blue*, *green* -et- **color** ( *red*, *blue*, *green* ) | Cette forme d’instruction color doit maintenant être remplacée par “**color** **rgb** ( *red*, *blue*, *green* )” |
| 0.9.9.45 | **decimal** *n* | L’instruction decimal était utilisé pour définir le nombre maximum de chiffres apès la virgule pour l’affichage de nombre flottant avec print.Afin de garantir l’affichage de très grand comme de très petits nombres en notation scientifique, cette fonction a été enlevée. |
