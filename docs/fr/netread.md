---
title: "Netread"
sidebar_label: "Netread"
---

## NetRead

### Format

**netread**\
**netread** ( )\
**netread** ( *socket_number* )

### Description

Retourne une chaîne de caractères contenant les données lues depuis une connexion réseau. Cette fonction est bloquante (elle attend qu’une données soit reçue). Si *socket_number* n’est par fourni, zéro (0) est utilisé par défaut.

### Exemple

Voir la page [NetConnect](./netconnect.md).

### Voir Aussi

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetWrite](./netwrite.md)

### Disponible depuis la version

0.9.6.31
