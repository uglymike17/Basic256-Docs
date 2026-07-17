---
title: "Portout"
sidebar_label: "Portout"
---

## PortOut

### Format

**portout** ( *io port number*, *value* )

### Description

Écrit une valeur *value* (entre 0 et 255) sur un port matériel *io port number*.\
Lire et écrire sur des ports matériel peut être dangereux et causer des résultats imprévisibles. Cette instruction peut être désactivée à cause des risques potentiels de sécurité système. Cette possibilité est accessible par l’option “préférence” du menu “édition” de la fenêtre BASIC-256.

Cette instruction n’est utilisable que sous windows. Sous windows 7 il faut exécuter BASIC-256 avec une permission élevée la première fois pour installer les drivers nécessaire. Un fois installé une permission normal suffira pour exécuter le programme

### Voir Aussi

[PortIn](./portin.md)

### Disponible depuis la version

0.9.6.41
