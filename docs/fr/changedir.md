---
title: "Changedir"
sidebar_label: "Changedir"
---

## Changedir

### Format

**changedir** *expression*\
**changedir** ( *expression* )

### Description

Change de répertoire de travail pour le chemin spécifié par l’*expression*. Pour toutes le OS (y compris Windows) un slash (/) est utilisé pour séparer les répertoires au sein d’un chemin complet.

### Autorisations

Un programme peut utiliser librement les fichiers de son propre dossier. Pour
tout ce qui se trouve en dehors de ce dossier, l'autorisation de l'utilisateur
est demandée ; si elle est refusée, l'instruction échoue avec
`ERROR_PERMISSION`. Voir [File and Folder Permissions](../en/filepermissions.md).

### Voir aussi

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Disponible à partir de la version

0.9.6r
