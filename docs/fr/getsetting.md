---
title: "Getsetting"
sidebar_label: "Getsetting"
---

## GetSetting

### Format

**getsetting** ( *program_name*, *key_name* )

### Description

Récupère et retourne un paramètre dans la base de registres (ou autre stockage persistant). Les chaînes de caractères *program_name* et *key_name* spécifient des paramètres qui doivent être les mêmes que ceux utilisés avec [SetSetting](./setsetting.md) (pour initialiser les valeurs). Une chaîne de caractères vide est renvoyée si le paramètre demandé n‘a jamais été initialisé.\
Les paramètres sauvegardés sous cette forme sont accessibles depuis d’autres programmes BASIC-256.\
Cet instruction peur être désactivée à cause des risques encourues par le système si elle est mal utilisée. Sa disponibilité est configurable dans l’environnement de programmation dans le menu ’‘Édition \> Préférence’’.

### Voir Aussi

[SetSetting](./setsetting.md)

### Exemple

    setsetting "thisprogram", "testsetting", "value of setting"
    print getsetting("thisprogram", "testsetting")

Affichera :

    value of setting

### Disponible depuis la version

0.9.6.38
