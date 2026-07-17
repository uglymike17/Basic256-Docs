---
title: "Open"
sidebar_label: "Open"
---

## Open

### Format

**open** *nomfichier*\
**open**(*nomfichier*)\
**open** *numerofichier*, *nomfichier*\
**open**(*numerofichier*, *nomfichier*)\
**openb** *nomfichier*\
**openb**(*nomfichier*)\
**openb** *numerofichier*, *nomfichier*\
**openb**(*numerofichier*, *nomfichier*)

### Description

Ouvre un fichier pour la lecture/écriture. Le *nomfichier* est spécifié sous forme d’une chaîne de caractères, et peut contenir un chemin d’accès relatif ou absolu. Si aucun *numerofichier* n’est spécifié le numéro zéro (0) sera utilisé par défaut.
Openb ouvre le fichier en mode bianire (“binary safe”). Cet type d’ouverture de fichiers est recommandé pour les fichiers dont on accède à l’aide grâce au fonctions [Readbyte](./readbyte.md) et [Writebyte](./writebyte.md).

### Remarque

BASIC256 peut ouvrir jusqu’à 8 fichiers en même temps. Les fichiers peuvent être numérotés de 0 à 7. L’ouverture d’un fichier avec le numéro d’un fichier déjà ouvert provoque la fermeture de ce dernier.

### Voir Aussi

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
