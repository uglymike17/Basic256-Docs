---
title: "Netdata"
sidebar_label: "Netdata"
---

## NetData

### Format

**netdata**\
**netdata** ( )\
**netdata** *socket_number*\
**netdata** ( *socket_number* )

### Description

Retourne vrai (1) si il y a une donnée au moins à lire avec la fonction [NetRead](./netread.md), retourne faux (0) sinon. Si *socket_number* n’est pas spécifié zéro (0) est utilisé par défaut.

### Exemple

Voir la page [NetConnect](./netconnect.md).

### Voir Aussi

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Disponible à partir de la version

0.9.6.31
