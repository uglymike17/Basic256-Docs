---
title: "Getslice"
sidebar_label: "Getslice"
---

## GetSlice

### Format

getslice(*x*, *y*, *largeur*, *hauteur*)

### Description

Retourne une chaîne de caractères qui contient la représentation hexadécimale du rectangle définit par le paramètres. La chaîne est formatée comme suit :\
\|Taille\|Description\|

|          |                                            |
|----------|--------------------------------------------|
| 4 octets | Largeur                                    |
| 4 octets | Hauteur                                    |
| 6 octets | 1er pixel (valeur RGB)                     |
| 6 octets | 2ème pixel (valeur RGB)                   |
| ….       | ….                                         |
| 6 octets | (largeur\*hauteur)ième pixel (valeur RGB) |

### Voir Aussi

[PutSlice](./putslice.md)

### Disponible à partir de la version

0.9.6b
