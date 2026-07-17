---
title: "Setsetting"
sidebar_label: "Setsetting"
---

## SetSetting

### Format

**setsetting** *program_name*, *key_name*, *setting_value*\
**setsetting** ( *program_name*, *key_name*, *setting_value* )

### Description

Sauvegarde un paramètre dans la base de registres (ou autre stockage persistant). Les chaînes de caractères *program_name* et *key_name* servent à catégoriser le paramètre et être certain qu‘il sera utilisé correctement et surtout qu’il ne sera pas accidentellement modifié par un autre programme. Il pourra être lus ensuite grâce à la fonction [GetSetting](./getsetting.md).\
Les paramètres sauvegardés sous cette forme sont accessibles depuis d’autres programmes BASIC-256.\
Cet instruction peur être désactivée à cause des risques encourues par le système si elle est mal utilisée. Sa disponibilité est configurable dans l’environnement de programmation dans le menu ’‘Édition \> Préférence’’.

### Voir Aussi

[GetSetting](./getsetting.md)

### Exemple

    setsetting "thisprogram", "testsetting", "value of setting"
    print getsetting("thisprogram", "testsetting")

Affichera :

    value of setting

### Disponible depuis la version

0.9.6.38
