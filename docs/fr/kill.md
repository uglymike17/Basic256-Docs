---
title: "Kill"
sidebar_label: "Kill"
---

## Kill

### Format

**kill** *filename*\
**kill**(*filename*)\

### Description

Efface le fichier spécifié *filename* du système.

### Autorisations

Un programme peut utiliser librement les fichiers de son propre dossier. Pour
tout ce qui se trouve en dehors de ce dossier, l'autorisation de l'utilisateur
est demandée ; si elle est refusée, l'instruction échoue avec
`ERROR_PERMISSION`. Voir [File and Folder Permissions](../en/filepermissions.md).

### Voir Aussi

*(See [fr:start](./start.md).)*
