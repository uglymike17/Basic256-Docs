---
title: "Codes d’Erreurs"
sidebar_label: "Codes d’Erreurs"
---

## Codes d’Erreurs

### Description

Voici la liste des codes d’erreurs d’exécution retournés par la fonction [LastError](./lasterror.md) ainsi que les messages textes associés retournés par la fonction [LastErrorMessage](./lasterrormessage.md).

|  |  |  |  |
|----|----|----|----|
| Erreur \# |  | Description | Traduction |
| 1 | ERROR_NOSUCHLABEL | “No such label” | “étiquette inexistante” |
| 2 | ERROR_FOR1 | “Illegal FOR – start number \> end number” | “FOR Illégal – nombre de début \> nombre de fin” |
| 3 | ERROR_FOR2 | “Illegal FOR – start number \< end number” | “FOR Illégal – nombre de début \< nombre de fin” |
| 4 | ERROR_NEXTNOFOR | “Next without FOR” | “Next sans FOR” |
| 5 | ERROR_FILENUMBER | “Invalid File Number” | “Numéro de fichier invalide” |
| 6 | ERROR_FILEOPEN | “Unable to open file” | “Ouverture de fichier impossible” |
| 7 | ERROR_FILENOTOPEN | “File not open.” | “Fichier non ouvert.” |
| 8 | ERROR_FILEWRITE | “Unable to write to file” | “Écriture dans le fichier impossible” |
| 9 | ERROR_FILERESET | “Unable to reset file” | “Remise à zéro du fichier impossible” |
| 10 | ERROR_ARRAYSIZELARGE | “Array dimension too large” | “Dimension de tableau trop grande” |
| 11 | ERROR_ARRAYSIZESMALL | “Array dimension too small” | “Dimension de tableau trop petite” |
| 12 | ERROR_NOSUCHVARIABLE | “Unknown variable” | “Variable inconnue” |
| 13 | ERROR_NOTARRAY | “Not an array variable” | “Pas une variable de type tableau” |
| 14 | ERROR_NOTSTRINGARRAY | “Not a string array variable” | “Pas un variable de type chaîne de caractère” |
| 15 | ERROR_ARRAYINDEX | “Array index out of bounds” | “Index de tableau en dehors des limites” |
| 16 | ERROR_STRNEGLEN | “Substring length less that zero” | “Longueur de sous-chaîne de caractère inférieure à zéro” |
| 17 | ERROR_STRSTART | “Starting position less than zero” | “Position de début inférieure à zéro” |
| 18 | ERROR_STREND | “String not long enough for given starting character” | “Chaîne de caractère trop petite pour la position de début donnée” |
| 19 | ERROR_NONNUMERIC | “Non-numeric value in numeric expression” | “Valeur non-numerique dans une expression numerique” |
| 20 | ERROR_RGB | “RGB Color values must be in the range of 0 to 255.” | “Les valeurs de couleur RGB doivent être comprises entre 0 et 255.” |
| 21 | ERROR_PUTBITFORMAT | “String input to putbit incorrect.” | “Chaîne de caractère invalide pour ‘putbit’.” |
| 22 | ERROR_POLYARRAY | “Argument not an array for poly()/stamp()” | “L’argument nest pas in tableau pour poly()/stamp()” |
| 23 | ERROR_POLYPOINTS | “Not enough points in array for poly()/stamp()” | “Pas assez de points dans le tableau pour poly()/stamp()” |
| 24 | ERROR_IMAGEFILE | “Unable to load image file.” | “Lecture du fichier image impossible.” |
| 25 | ERROR_SPRITENUMBER | “Sprite number out of range.” | “Numéro de Sprite en dehors des bornes.” |
| 26 | ERROR_SPRITENA | “Sprite has not been assigned.” | “Le Sprite n’a pas été assigné.” |
| 27 | ERROR_SPRITESLICE | “Unable to slice image.” | “Utilisation de Slice impossible sur l’image.” |
| 28 | ERROR_FOLDER | “Invalid directory name.” | “Nom de répertoire invalide.” |
| 29 | ERROR_DECIMALMASK | “Decimal mask must be in the range of 0 to 15.” | “Le masque décimal doit être compris entre 0 et 15.” |
| 30 | ERROR_DBOPEN | “Unable to open SQLITE database.” | “Ouverture de la base de données SQLITE impossible.” |
| 31 | ERROR_DBQUERY | “Database query error (message follows).” | “Erreur de requête de base de données (message suivant).” |
| 32 | ERROR_DBNOTOPEN | “Database must be opened first.” | “La base de données doit être ouverte avant.” |
| 33 | ERROR_DBCOLNO | “Column number out of range.” | “Numero de colonne hors borne.” |
| 34 | ERROR_DBNOTSET | “Record set must be opened first.” | “La série d’enregistrement doit être ouverte avant.” |
| 35 | ERROR_EXTOPBAD | “Invalid Extended Op-code.” | “Op-code étendu invalide.” |
| 36 | ERROR_NETSOCK | “Error opening network socket.” | “Impossible d’ouvrir le socket réseau.” |
| 37 | ERROR_NETHOST | “Error finding network host.” | “Hôte réseau introuvable.” |
| 38 | ERROR_NETCONN | “Unable to connect to network host.” | “Connexion à l’hôte réseau impossible.” |
| 39 | ERROR_NETREAD | “Unable to read from network connection.” | “Lecture depuis la connexion réseau impossible.” |
| 40 | ERROR_NETNONE | “Network connection has not been opened.” | “La connexion réseau n’a pas été ouverte.” |
| 41 | ERROR_NETWRITE | “Unable to write to network connection.” | “Écriture vers la connexion réseau impossible.” |
| 42 | ERROR_NETSOCKOPT | “Unable to set network socket options.” | “Écriture des options de socket impossible.” |
| 43 | ERROR_NETBIND | “Unable to bind network socket.” | “Liaison au socket réseau impossible.” |
| 44 | ERROR_NETACCEPT | “Unable to accept network connection.” | “Impossible d’accepter une connexion réseau.” |
| 45 | ERROR_NETSOCKNUMBER | “Invalid Socket Number” | “Numéro de Socket Non valide” |
| 9999 | ERROR_NOTIMPLEMENTED | “Feature not implemented in this environment.” | “Fonction non implémentée dans cet environnent.” |

### Exemple

    # test d'un gestionnaire d'erreur d’exécution
    onerror nicetrap
    print 1
    next haha
    print 2
    open 999, "fichier.bug"
    print "Exécution malgré tout"

    # suppression du gestionnaire d'erreur personnalisé, retour au fonctionnement par défaut (arrêt sur erreur)
    offerror
    print 3
    next hoho
    print "partie de code jamais atteinte"

    end

    nicetrap:
    # Voici un gestionnaire d'erreur général
    print "Erreur gérée pendant l’exécution - erreur à la ligne numéro " + lasterrorline + " - numéro d'erreur " + lasterror + " message " + lasterrormessage + " (" + lasterrorextra + ")"
    return

Cela produira le résultat suivant:\

    1
    Erreur gérée pendant l’exécution - erreur à la ligne numéro 4 - numéro d'erreur 4 message Next without FOR ()
    2
    Erreur gérée pendant l’exécution - erreur à la ligne numéro 6 - numéro d'erreur 5 message Invalid File Number ()
    Exécution malgré tout
    3
    ERROR on line 12: Next without FOR 

### Voir Aussi

[Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)
