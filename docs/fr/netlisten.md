---
title: "Netlisten"
sidebar_label: "Netlisten"
---

## NetListen

### Format

**netlisten** *port_number*\
**netlisten** ( *port_number*)\
**netlisten** *socket_number*, *port_number*\
**netlisten** ( *socket_number*, *port_number*)

### Description

Écoute le port réseau spécifique *port_number* dans l’attente d’une connexion réseau (fonctionnement serveur) et ouvre la connexion. Si *socket_number* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Exemple

Voir la page [NetConnect](./netconnect.md).

### Voir Aussi

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Disponible à partir de la version

0.9.6.31
