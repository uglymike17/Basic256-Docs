---
title: "Onerror"
sidebar_label: "Onerror"
---

## OnError

### Format

**onerror** *etiquette*

### Description

Met en place un gestionnaire d‘erreur d’exécution personnalisé. Toute erreur d’exécution survenant après l’appel de cette fonction entraînera l’appel de la routine commençant à l’*étiquette* passée en paramètre. Il est possible de reprendre le déroulement normal du programme à l’instruction qui suit celle qui a provoqué l’erreur grâce à l’instruction [Return](./gosubreturn.md) placée dans le gestionnaire d’erreur.

### Exemple

Voir l’exemple de la page [Codes d'Erreurs](./errorcodes.md).

### Voir Aussi

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md)

### Disponible à partir de la version

0.9.6z
