---
title: "Référence en une page"
sidebar_label: "Référence en une page"
---

\~~ODT\~~

### BASIC-256 Syntax Reference

## Syntaxe du programme

Les programmes sous BASIC-256 sont formés d’une série d’instructions séparées par un retour à la ligne et qui sont exécutées dans l’ordre.
## Constantes numériques

Les constantes numériques peuvent être n’importe quel(s) caractère(s) numérique(s), précédé ou non d’un signe moins (pour les nombres négatifs) et une éventuelle décimale (pour les nombres à virgule flottante).\
\
Les nombres positifs entiers peuvent aussi être exprimées en binaire (base 2), octal (base 8) et hexadécimal (base 16). Faites précéder les entrées binaires de 0b (0b1110 = 14), octales de 0o (0o177 = 127) et hexadécimales de 0x (0xff = 255).
## Constantes chaînes de caractères

Les (constantes) chaînes de caractères sont composées de zéro ou plus de caractères entourés de guillemets (“).
## Variables

Le nom des variables contenant des valeurs numériques doit commencer par une lettre et peut comporter n’importe quel nombre de caractères alpha-numériques. Il est sensible à la casse (on différencie majuscule et minuscule). Il peut être utilisé en alternance de constantes numériques (i.e. on peut passer de l’un à l’autre, les deux se valent).\
\
Le nom des variables contenant des chaînes de caractères suit les mêmes règles que celui des variables numériques, mais doit finir par un symbole dollar (\$). Il peut, lui aussi, être utilisé en alternance de constantes.
## Tableaux

Les tableaux sont affectés à l’aide de la commande DIM ou redimensionnés avec Redim. Ils peuvent contenir des données numériques ou des chaînes de caractères. Pour accéder à un élément donné d’un tableau on utilise les crochets “\[ et \]” autour du rang de l’élément voulu (la numérotation partant de zéro). Les tableaux peuvent aussi être dimensionnés et interrogés sur 2 dimensions.\
Le taille d’un tableau peut être retournée par une des commandes suivantes : \[?\] \[?,\] ou \[,?\] à la fin du nom du tableau.

### Exemple

    print myarray[4]

affichera à l‘écran le 5eme élément du tableau ’myarray’
## Tableaux “anonymes”

Un tableau anonyme est une série de valeurs numériques ou de chaînes de caractères, séparées par des virgules, et encadrées par des accolades {}. Un tableau anonyme peut ête utilisé à la place d’une variable d’un tableau ou pour assigner une variable d’un tableau.

### Exemple

    dim myarray(4)
    myarray = {1, 2, 3, 4}

**PS : je ne suis pas sûr de la traduction de cette page. C’est ainsi que je l’ai compris, mais sans certitude.**
## Opérateurs

Les opérateurs +, -, \*, /, ^, %, et \\ sont utilisés pour réaliser respectivement une addition, une soustraction, une multiplication, une division, une puissance, un modulo et une division arrondie à l’entier des opérandes. Les opérandes valides sont des constantes numériques et/ou des varaibles numériques.\
\
L’opérateur = est utilisé à la fois pour assigner une valeur à une varaiable et pour tester l’égalité. L’opérateur + peut être utilisé pour réaliser la concaténation (= mise bout à bout) de n’importe quelle combinaison de chaînes de constantes et de variables.string variables. L’opératuer : peut servir à séparer plusieurs instructions sur une même ligne. L’opérateur ; supprime le retour à la ligne qu’introduirait une commande PRINT. L’opérateur \# est un raccourci de la commande [Rem](./rem.md) et interchangeable avec celle-ci.\
\
^Ordre des opérations^^^

| Niveau | Opérateur           | Catégorie/Description                   |
|--------|----------------------|------------------------------------------|
| 1      | ( )                  | Groupement                               |
| 2      | ^                    | Exposant                                 |
| 3      | \-                   | Moins                                    |
| 4      | \* / \\              | Multiplication et Division               |
| 5      | %                    | Reste entier (Mod)                       |
| 6      | \+ -                 | Addition, Concaténation et Soustraction |
| 7      | \< \<= \> \>= = \<\> | Comparaison (Numérique et Chaîne)      |
| 8      | NOT                  | “Non” logique                            |
| 9      | AND                  | “Et” logique                             |
| 10     | OR                   | “Ou” logique                             |
| 11     | XOR                  | “Ou exclusif” logique                    |

### Statements and Functions - Alphabetic

## Abs

### Format

**abs** ( *expression* )

### Description

Retourne la valeur absolue d’une *expression* numérique.

### Exemple

    print abs(-45)
    print abs(6.45)

permet d’afficher

    45
    6.45
## Acos

### Format

**acos** ( *expression* )

### Description

Calcule l’arc-cosinus d’expression. Les angles sont exprimés en radians (0 à 2 pi).

### Voir Aussi

[Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Asc

### Format

**asc** ( *expression* )

### Description

Convertit le premier caractère d’une chaîne en sa valeur ASCII (= un nombre entier).

| Asc | Chr   | Asc | Chr | Asc | Chr | Asc | Chr | Asc | Chr | Asc | Chr |
|-----|-------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 32  | SPACE | 48  | 0   | 64  | @   | 80  | P   | 96  | \`  | 112 | p   |
| 33  | !     | 49  | 1   | 65  | A   | 81  | Q   | 97  | a   | 113 | q   |
| 34  | “     | 50  | 2   | 66  | B   | 82  | R   | 98  | b   | 114 | r   |
| 35  | \#    | 51  | 3   | 67  | C   | 83  | S   | 99  | c   | 115 | s   |
| 36  | \$    | 52  | 4   | 68  | D   | 84  | T   | 100 | d   | 116 | t   |
| 37  | %     | 53  | 5   | 69  | E   | 85  | U   | 101 | e   | 117 | u   |
| 38  | &     | 54  | 6   | 70  | F   | 86  | V   | 102 | f   | 118 | v   |
| 39  | ’     | 55  | 7   | 71  | G   | 87  | W   | 103 | g   | 119 | w   |
| 40  | (     | 56  | 8   | 72  | H   | 88  | X   | 104 | h   | 120 | x   |
| 41  | )     | 57  | 9   | 73  | I   | 89  | Y   | 105 | i   | 121 | y   |
| 42  | \*    | 58  | :   | 74  | J   | 90  | Z   | 106 | j   | 122 | z   |
| 43  | \+    | 59  | ;   | 75  | K   | 91  | \[  | 107 | k   | 123 | {   |
| 44  | ,     | 60  | \<  | 76  | L   | 92  | \\  | 108 | l   | 124 | \|  |
| 45  | \-    | 61  | =   | 77  | M   | 93  | \]  | 109 | m   | 125 | }   |
| 46  | .     | 62  | \>  | 78  | N   | 94  | ^   | 110 | n   | 126 | ~   |
| 47  | /     | 63  | ?   | 79  | O   | 95  | \_  | 111 | o   | 127 |     |

### Voir Aaussi

[Chr](./chr.md)

### Exemple

    print asc("A")
    print asc("bleu")

permet d’afficher

    65
    98

### Fonction disponible de la version

0.9.4
## Asin

### Format

**asin** ( *expression* )

### Description

Calcule l’arc-sinus d’une *expression*. Les angles sont exprimés en (0 à 2pi).

### Voir aussi

[Acos](./acos.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Atan

### Format

**atan** ( *expression* )

### Description

Calcule l’arc-tangente d’une *expression*. Les angles sont exprimés en radians (0 à 2pi).

### Voir aussi

[Acos](./acos.md), [Asin](./asin.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Ceil

### Format

**ceil** ( *expression* )

### Description

Retourne l’entier immédiatement inférieur ou égal à une *expression*.

### Voir aussi

[Floor](./floor.md)

### Exemple

    print ceil(9.1)
    print ceil(-5.4)

fera afficher

    10
    -5
## Changedir

### Format

**changedir** *expression*\
**changedir** ( *expression* )

### Description

Change de répertoire de travail pour le chemin spécifié par l’*expression*. Pour toutes le OS (y compris Windows) un slash (/) est utilisé pour séparer les répertoires au sein d’un chemin complet.

### Voir aussi

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Disponible à partir de la version

0.9.6r
## Chr

### Format

**chr** ( *expression* )

### Description

Converti l’entier *expression* en le caractère correspondant en code ASCII. Voir la page consacrée à asc pour un tableau de converson des caractères ASCII.

### Voir aussi

[Asc](./asc.md)

### Exemple

    print chr(66)+chr(111)+chr(111)+chr(33)

affichera

    Boo!

### Disponible à partir de la version

0.9.4
## Circle

### Format

**circle** *x*,*y*,*r*

### Description

Trace un cercle dont les coordonnées du centre sont x,y et le rayon r. Le cercle étant de la couleur active.

### Exemple

    color blue
    rect 0,0,300,300
    color red
    circle 100,100,50

dessine\
![Circle](@site/static/img/wiki/en/cir.png)
## Clickb

### Format

**clickb**\
**clickb** ( )

### Description

Retourne quel(s) bouton(s) de la souris l’utilisateur a pressé (quand il est sur la partie graphic output). Retourne 0 si aucun clic n’a été détecté. Si plusieurs boutons ont été pressés la valeur est la somme des valeurs des boutons pressés.

| Valeurs retournées |                |
|---------------------|----------------|
| Valeur              | Bouton pressé |
| 0                   | aucun          |
| 1                   | gauche         |
| 2                   | droit          |
| 4                   | du centre      |

### Voir aussi

[Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Exemple

    # réinitialise le compte des clics
    clickclear
    # attend que l'utilisateur clique
    print "cliquez avec la souris sur la surface graphics output"
    while clickb = 0
      pause .01
    endwhile
    # Montre où l'utilisatur a cliqué
    print "L'utilisateur a cliqué le point de coordonnées (" + clickx + "," + clicky + ")"

### Disponible à partir de la version

0.9.4d
## Clickclear

### Format

**clickclear**\
**clickclear** ( )

### Description

Remet ClickB, Clickx et Clicky à zéro afin de pouvoir détecter facilement un clic de la souris.

### Voir aussi

[Clickb](./clickb.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Exemple

Voir le programme de la page de [Clickb](./clickb.md).

### Disponible à partir de la version

0.9.4d
## Clickx

### Format

**clickx**\
**clickx** ( )

### Description

Retourne l’abscisse x du pointeur de la souris sur la surface graphic output au dernier clic.

### Voir aussi

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Exemple

Voir le programme de la page de [Clickb](./clickb.md).

### Disponible à partir de la version

0.9.4d
## Clicky

### Format

**clicky**\
**clicky** ( )

### Description

Retourne l’ordonnée y du pointeur de la souris sur la surface graphic output au dernier clic.

### Voir aussi

[Clickclear](./clickclear.md), [Clickb](./clickb.md), [Clickx](./clickx.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Exemple

Voir le programme sur la page de [Clickb](./clickb.md).

### Disponible à partir de la version

0.9.4d
## Clg

### Format

clg

### Description

Efface la fenêtre d’affichage graphique.
## Close

### Format

**close**\
**close** ( )\
**close** *filenumber*\
**close** ( *filenumber* )

### Description

Ferme un fichier ouvert. Si aucun fichier ne correspond à ce numéro, la commande n’a aucun effet. Si aucun numéro de fichier n’est spécifié, le numéro de fichier utilisé sera le zéro.

### Voir aussi

[Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md)
## Cls

### Format

**cls**

### Description

Nettoie la fenêtre text output.
## Color

### Format

**color** *colorname*\
**color** ( *colorname* )\
**color** *red*, *blue*, *green*\
**color** ( *red*, *blue*, *green* )\
**color** *rgb_value*\
**color** ( *rgb_value* )\

### Description

Règle la couleur active comme étant la couleur appelée *colorname*; de composantes rouge, bleue et verte *red*, *blue*, *green* ; ou de valeur RGB *rgb_value*.

Il y a une couleur spéciale appelée CLEAR, de valeur -1. Si la couleur courante est réglée sur cette valeur, les pixels ou formes dessinés effaceront les pixels sur lesquels ils passeront et les rendront transparents. C’est particulièrement utile pour créer des sprites avec la commande Spriteslice.\

| Noms des couleurs et leur valeur RGB |  |  |  |
|----|----|----|----|
| Nom de la couleur | Valeur RGB |  |  |
| black | 0, 0, 0 | \<hi \#000000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| white | 255, 255, 255 | \<hi \#FFFFFF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| red | 255, 0, 0 | \<hi \#FF0000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkred | 128, 0, 0 | \<hi \#800000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| green | 0, 255, 0 | \<hi \#00FF00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkgreen | 0, 128, 0 | \<hi \#008000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| blue | 0, 0, 255 | \<hi \#0000FF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkblue | 0, 0, 128 | \<hi \#000080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| cyan | 0, 255, 255 | \<hi \#00FFFF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkcyan | 0, 128, 128 | \<hi \#008080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| purple | 255, 0, 255 | \<hi \#FF00FF\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkpurple | 128, 0, 128 | \<hi \#800080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| yellow | 255, 255, 0 | \<hi \#FFFF00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkyellow | 128, 128 ,0 | \<hi \#808000\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| orange | 255, 102, 0 | \<hi \#FF6600\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkorange | 176, 61 ,0 | \<hi \#B03D00\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| grey | 164, 164 ,164 | \<hi \#A4A4A4\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| darkgrey | 128, 128 ,128 | \<hi \#808080\>\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~\~\~~SP\~~\</hi\> |  |
| clear | -1 | \~~SP\~~ |  |

### Voir aussi

[Rgb](./rgb.md), [GetColor](./getcolor.md)

### Exemple

    clg
    color rgb(128,128,128)
    rect 0,0,graphwidth, graphheight
    color red
    circle 100,100,50
    color 255,160,160
    circle 100,100,25

Dessinera un rectangle gris avec dedans un cercle rouge et un centre rose.\
![Color](@site/static/img/wiki/en/color.png)

### Disponible à partir de la version

0.9.5m
## Cos

### Format

**cos** ( *expression* )

### Description

Calcule le cosinus de l‘*expression*. L’*expression* doit être exprimé en radians.

### Note

La fonction cos ne retourne pas un résultat exact (mais une valur approchée).

### Voir aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Degrees](./degrees.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)

### Exemple

    clg
    color black
    # Trace une ligne à travers la fenêtre graphic output
    line 0,150,300,150
    # point de départ
    lastx = 0
    lasty = cos(0) * 50 + 150
    # puis pas après pas trace la courbe du cosinus
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = cos(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

dessine\
![Cosine Curve](@site/static/img/wiki/fr/cos.jpg)
## Currentdir

### Format

**currentdir**\
**currentdir** ( )

### Description

Retourne le chemin complet du répertoire courant. Pour toutes les OS (y compris Windows) un slash (/) sépare les répertoires du chemin.

### SeVoir aussi

[Changedir](./changedir.md), [Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Disponible à partir de la version

0.9.6r
## Day

### Format

**day**\
**day**()

### Description

Renvoie le jour du mois actuel (1-31) d’après l’horloge système.

### Exemple

    print "Aujourd'hui nous sommes le ";
    print day() + "/" + (month() + 1) + "/" + year()

affichera par exemple :

    Aujourd'hui nous sommes le 1/5/2013

### Voir aussi

[Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### Première version

0.9.4
## DBClose

### Format

**dbclose**\
**dbclose** ( )

### Description

Ferme le fichier de données SQLite actuellement ouvert.

### Exemple

Voir l’exemple de la page de [DBOpen](./dbopen.md).

### Voir aussi

[DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Liens externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier sont disponibles aux adresses suivantes : [SQLite Home Page](http://sqlite.org) et [SQL at Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBCloseSet

### Format

**dbcloseset**\
**dbcloseset** ( )

### Description

Ferme une série d’enregistrements ouverte par [DBOpenSet](./dbopenset.md).

### Exemple

Voir l’exemple d’utilisation sur la page [DBOpen](./dbopen.md) .

### Voir Aussi

[DBClose](./dbclose.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Liens Externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes: [Page principale de SQLite](http://sqlite.org) et [Page Wikipedia de SQL](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBExecute

### Format

**dbexecute** *SqlStatement*\
**dbexecute** ( *SqlStatement* )

### Description

Exécute une commande SQL sur le fichier de base de données SQLite ouvert. Cette commande ne produit pas d’enregistrement.

### Exemple

Voir l’exemple de la page de [DBOpen](./dbopen.md).

### Voir aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Liens externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier sont disponibles aux adresses suivantes : [Page d'accueil de SQLite](http://sqlite.org) et [SQL sur Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBFloat

### Format

**dbfloat** ( *ColumnNumber* )

### Description

Retourne une valeur décimale (virgule flottante) de la *colonne demandée* de la ligne active de l’enregistrement ouvert.

### Exemple

Voir l’exemple de la page de [DBOpen](./dbopen.md).

### Voir aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Liens externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes : [Page d'accueil de SQLite](http://sqlite.org) et [SQL sur Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBInt

### Format

**dbint** ( *ColumnNumber* )

### Description

Retourne la valeur entière de la *colonne demandée* de la ligne active de l’enregistrement ouvert.

### Exemple

Voir l’exemple de la page de [DBOpen](./dbopen.md).

### Voir aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Liens externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes : [Page d'accueil de SQLite](http://sqlite.org) et [SQL sur Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBOpen

### Format

**dbopen** *SQLiteFile*\
**dbopen** ( *SQLiteFile* )

### Description

Ouvre un fichier de base de données SQLite. Si le fichier n’existe pas, il est créé.

### Exemple

    #database foo - crée une base de données, peuple une table, ouvre un enregistrement et lit les données de la table.

    # crée un nouveau fichier de base de données ou l'ouvre
    dbopen "dbtest.sqlite3"

    # efface l'ancienne table "foo" - renvoie une erreur si c'est une nouvelle base de données
    onerror errortrap
    dbexecute "drop table foo;"
    offerror
    # crée et peuple
    dbexecute "create table foo (id integer, words text, value decimal);"
    dbexecute "insert into foo values (1,'un',3.14);"
    dbexecute "insert into foo values (2,'deux',6.28);"
    dbexecute "insert into foo values (3,'trois',9.43);"

    # ouvre une table (série d'enregistrements) résultat de la requête et
    # tourne en boucle pour parcourir tous les enregistrements (toutes les lignes de données).
    dbopenset "select * from foo order by words;"
    while dbrow()
        print dbint(0) + dbstring(1) + dbfloat(2)
    end while
    dbcloseset

    # rassemble tout
    dbclose
    end

    errortrap:
    # accepte l'erreur - n'affiche rien - va à la prochaine commande
    return

affichera

    1un3.14
    3trois9.43
    2deux6.28

### Voir aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Lien externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes : [Page d'accueil de SQLite](http://sqlite.org) et [SQL sur Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBClose

### Format

**dbopenset** *CommandeSQL*\
**dbopenset** ( *CommandeSQL* )

### Description

Exécute une commande SQL, créé et ouvre une série d’enregistrements qui peuvent être parcourus par le programme pour utiliser le résultat de la commande SQL (une requête SQL par exemple).

### Exemple

Voir l’exemple d’utilisation dans la page [DBOpen](./dbopen.md) .

### Voir aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBRow](./dbrow.md), [DBString](./dbstring.md)

### Liens Externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes: [Page principale de SQLite](http://sqlite.org) et [Page Wikipedia de SQL](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## DBRow

### Format

**dbrow**\
**dbrow** ( )

### Description

Cette fonction avance d’un enregistrement dans la série d’enregistrement en cours. Elle retourne vrai (true) si l’enregistrement existe, ou faux (false) si la fin des enregistrements de la série est atteinte.

### Exemple

Voir l’exemple d’utilisation dans la page [DBOpen](./dbopen.md).

### Voir Aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBString](./dbstring.md)

### Liens Externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes: [Page principale de SQLite](http://sqlite.org) et [Page Wikipedia de SQL](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir le la version

0.9.6y
## DBString

### Format

**dbstring** ( *NuméroDeColonne* )

### Description

Retourne une chaîne de caractères correspondant à la colonne spécifiée de l’enregistrement en cours de la série d’enregistrement ouverte.

### Exemple

Voir l’exemple de la page [DBOpen](./dbopen.md).

### Voir Aussi

[DBClose](./dbclose.md), [DBCloseSet](./dbcloseset.md), [DBExecute](./dbexecute.md), [DBFloat](./dbfloat.md), [DBInt](./dbint.md), [DBOpen](./dbopen.md), [DBOpenSet](./dbopenset.md), [DBRow](./dbrow.md)

### Liens externes

De plus amples informations (en anglais) sur les bases de données en général et SQLite en particulier, sont disponibles aux adresses suivantes : [Page d'accueil de SQLite](http://sqlite.org) et [SQL sur Wikipedia](http://en.wikipedia.org/wiki/SQL).

### Disponible à partir de la version

0.9.6y
## Degrees

### Format

**degrees** ( *expression* )

### Description

<img src="/en/radians.png" class="align-right" alt="radians.png" />
Retourne la conversion en degrés de l’angle *expression* donné en radians.\

### Voir aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Radians](./radians.md), [Sin](./sin.md), [Tan](./tan.md)
## Dim

### Format

**dim** *numericvariable* ( *integer* )\
**dim** *stringvariable\$* ( *integer* )\
**dim** *numericvariable* ( *rows* , *columns* )\
**dim** *stringvariable\$* ( *rows* , *columns* )

### Description

Retourne un nouveau tableau à 1 dimension de longueur *integer* ou à 2 dimensions qui peut être adressé par *row* et *column*. Selon l’assignation de la variable, un tableau numérique ou de chaînes de caractères est créé.\
Le premier élément d’un tableau a l’index 0 (zéro). Les index allant ainsi de 0 à {longueur}-1.

### Voir aussi

[Redim](./redim.md)

### Exemple

    dim z(5)
    z = {1, 2, 3, 4, 5}
    print z[0] + " " + z[4]

affichera

    1 5

### Exemple 2

    dim c$(4)
    c$ = {"à", "bulot, "laque", "L'anneau"}
    print c$[2] + " " + c$[3] + " ";
    print c$[1] + " " + c$[0] + "!"

affichera

    L'anneau laque à bulot!
## Do / Until

### Format

**do**\
 *Instruction(s)*\
**until** *ExpressionBooléenne*

### Description

Exécute en boucle la ou les *Instruction(s)* jusqu‘à ce que l’*ExpressionBooléenne* soit évaluée à vraie. Do / Until exécute la ou les *Instruction(s)* une ou plusieurs fois. Le test est fait après chaque exécution du code dans la boucle.

### Voir Aussi

[For / Next](./fornext.md), [While / End While](./whileendwhile.md)

### Exemple

    t = 1
    do
      print t
      t = t + 1
    until t > 5

Produira le résultat suivant:

    1
    2
    3
    4
    5

### Disponible à partir de la version

0.9.4g
## End

### Format

end

### Description

Termine l’exécution du programme.

### Exemple

    print "Début du programme."
    end
    print "Est-ce que je passe par là?"

Produira le résultat suivant:

    Début du programme.
## Eof

### Format

eof\
eof()\
eof(*NuméroFichier*)

### Description

Retourne un drapeau binaire (vrai/faux) qui signale si la fin du fichier (EOF: End Of File) a été atreinte. Si *NuméroFichier* n’est pas spécifié alors le numéro zéro (0) sera utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Exists](./exists.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Disponible à partir de la version

0.9.4
## Exists

### Format

exists ( *expression* )

### Description

Retourne une valeur binaire (vrai/faux) qui indique si le chemin du fichier spécifié dans “*expression*” existe.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writeline](./writeline.md)

### Disponible à partir de la version

0.9.4
## FastGraphics

### Format

fastgraphics

### Description

Active le mode **fastgraphics**, jusqu’à ce que le programme soit stoppé. Dans ce mode l’affichage graphique n’est mis à jour que lors de l’appel de la commande **REFRESH**. Ce mode peut ête utilisé pour augmenter significativement la vitesse d’affichage des graphiques complexes et diminuer (voir annuler) l’effet de clignotement.

### Remarque

Lorsque l’on créé des animations il est recommandé de procéder à tout le tracé du graphique dans un sous programme et d’utiliser un seul **REFRESH** une fois que tout a été tracé dans l’image.

### Voir Aussi

[Refresh](./refresh.md)
## Float

### Format

float ( *expression* )

### Description

Convertie *expression* (qui peut être une chaîne de caractères ou un entier) en nombre flottant. Si *expression* ne peut pas être convertie zéro sera retourné.

### Voir Aussi

[Int](./int.md)

### Disponible depuis la version

0.9.4
## Floor

### Format

floor ( *expression* )

### Description

Retourne le plus grand entier inférieur ou égal à *expression*.

### Voir Aussi

[Ceil](./ceil.md)
## Font

### Format

font *nomdefonte*, *point*, *epaisseur*

### Description

Définie la fonte de caractères qui sera utilisée par la commande **Text** comme étant *nomdefonte*. La taille sera donnée par *point* (en 1/72“). *epaisseur* est un nombre entre 0 et 100 qui définit l’épaisseur de tracé des caractères (Léger=25, Normal=50, épais=75).

### Exemple

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Donnera le resultat suivant:\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### Voir Aussi

[Text](./text.md)

### Disponible depuis la version

0.9.4
## For / Next

### Format

**for** *variable* = *expression1* **to** *expression2* \[ **step** *expression3* \]\
*instruction(s)*\
**next** *variable*

### Description

Les commandes **FOR** et **NEXT** sont à utiliser ensemble pour exécuter une ou plusieurs *instruction(s)* un nombre spécifié de fois. Quand **FOR** est rencontré la première fois (lors de l’exécution du programme), la *variable* est initialisée à *expresssion1*.\
Après chaque **NEXT**, la *variable* est incrémentée de 1 (par défaut), ou de *expression3* si la clause **STEP** est utilisée, jusqu’à ce que la *variable* soit supérieure ou égale à *expression2* pour les valeurs de pas positifs, ou inférieure ou égale à *expression2* pour les valeurs de pas négatifs.

### Voir Aussi

[Do / Until](./dountil.md), [While / End While](./whileendwhile.md)
## GetColor

### Format

getcolor\
getcolor()

### Description

Retourne la valeur RGB de la couleur de tracé en cours (telle que définie par la commande color). RGB est calculé à l’aide de la formule ((*rouge* \* 256) + *vert* \* 256) + *bleu* où *rouge*, *vert*, et *bleu* sont compris entre 0 et 255. Si la couleur de tracé est définie à CLEAR, cette fonction retourne -1.

### Voir Aussi

[Color](./color.md), [Rgb](./rgb.md)

### Exemple

    color red
    print getcolor

Donnera le résultat :

    16711680

### Disponible à partir de a version

0.9.5m
## GetSlice

### Format

getslice(*x*, *y*, *largeur*, *hauteur*)

### Description

Retourne une chaîne de caractères qui contient la représentation hexadécimale du rectangle définit par le paramètres. La chaîne est formatée comme suit :\
\|Taille\|Description\|

|          |                                            |
|----------|--------------------------------------------|
| 4 octets | Largeur                                    |
| 4 octets | Hauteur                                    |
| 6 octets | 1er pixel (valeur RGB)                     |
| 6 octets | 2ème pixel (valeur RGB)                   |
| ….       | ….                                         |
| 6 octets | (largeur\*hauteur)ième pixel (valeur RGB) |

### Voir Aussi

[PutSlice](./putslice.md)

### Disponible à partir de la version

0.9.6b
## Goto

### Format

goto *label*

### Description

Poursuit l’exécution du programme à l’étiquette *label* spécifiée.

### Exemple

    print "Cette voiture est";
    goto skipit
    print " rouge avec de rayures";
    skipit: #
    print " jaune."

Affichera :

    Cette voiture est jaune.

### Voir Aussi

[Gosub](./gosub.md), [Return](./return.md)

### Notes

Les instruction [Goto](./goto.md), [Gosub](./gosub.md), et “labels” de la version 0.9.9.2, ne peuvent pas être utilisées dans les définitions des [Function](./function.md) et [Subroutine](./subroutine.md).
## Gosub / Return

### Format

**gosub** *label*\
\
label:\
*instruction(s)*\
**return**

### Description

Exécute et attend le sous-programme commençant à l’étiquette *label*. Le sous-programme se termine par **return**, l’exécution du programme se poursuit alors à l’instruction qui suit **gosub**. le commandes **gosub** peuvent être imbriquées.

### Exemple

    print "Début du";
    gosub progtxt
    gosub sousprog
    print "Milieu du";
    gosub progtxt
    gosub sousprog
    print "Fin du";
    gosub progtxt
    end

    sousprog:
    print "-> exécution du sous";
    gosub progtxt
    return

    progtxt:
    print " programme"
    return

Affichera :

    Début du programme
    -> exécution du sous programme
    Milieu du programme
    -> exécution du sous programme
    Fin du programme

### Voir Aussi

[Goto](./goto.md)
## Graphheight

### Format

graphheight\
graphheight()

### Description

Retournes la hauteur (dimension Y) de la fenêtre d’affichage graphique courante.

### Voir Aussi

[Graphsize](./graphsize.md), [Graphwidth](./graphwidth.md)

### Disponible à partir de la version

0.9.3
## Graphsize

### Format

graphsize *x_expression*, *y_expression*

### Description

Change la taille de la fenêtre d’affichage graphique et rafraîchis la fenêtre de l’application BASIC256.

### Voir Aussi

[Graphheight](./graphheight.md), [Graphwidth](./graphwidth.md)

### Disponible à partir de la version

0.9.3
## Graphwidth

### Format

graphwidth\
graphwidth()

### Description

Retournes la largeur (dimension X) de la fenêtre d’affichage graphique courante.

### Voir Aussi

[Graphheight](./graphheight.md), [Graphsize](./graphsize.md)

### Disponible à partir de la version

0.9.3
## Hour

### Format

**hour**\
**hour**()

### Description

Renvoie l’heure courante de l’horloge système (0-23).

### Exemple

    # affiche la date
    dim mois$(12)
    mois$ = {"janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"}
    d = day()
    if d=1 then
       ier$="er"
    else
       ier$=""
    endif
    print d + ier$ + " " + mois$[month()] + " " + year()
    # affiche l'heure
    print  hour() + ":" + right("0" + minute(), 2) + ":" + right("0" + second(), 2)

affichera quelque chose comme ceci :\

    1er mai 2013
    21:47:04

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### Première version

0.9.4
## Instr

### Format

instr( *string1*, *string2* )

### Description

Vérifie si *string2* est inclus dans *sting1*. Si c’est le cas cette fonction retourne la position du premier caractère de *string2* dans *string1*. Sinon cette fonction retourne zéro (0).

### Note

La position commence à l’indice 1.

### Exemple

    print instr("Bonjour", "jour")

Affichera:

    4
## Int

### Format

int ( *expression* )

### Description

Convertie *expression* (qui peut être un nombre flottant ou une chaîne de caractères) en nombre entier (partie entière). Zéro sera retourné si l’expression ne peut être convertie.

### Voir Aussi

[Float](./float.md)
## If / Then

### Format

**if** *expression_booléenne* **then** *instruction*

------------------------------------------------------------------------

**if** *expression_booléenne* **then**\
*instruction(s)*\
**end if**

------------------------------------------------------------------------

**if** *expression_booléenne* **then**\
*instruction(s)*\
**else**\
*instruction(s)*\
**end if**

### Description

un **if** (si) en une ligne évalue l‘*expression_booléenne*, si cette dernière est vrai alors l’*instruction* qui suit **then** (alors) est exécuté. Sinon l‘exécution continue à la ligne qui suit le **if**.
Il existe aussi deux autre formes de **if** (si) sur de multiple-lignes, une forme avec seulement un bloc d’*instruction(s)* **then** (alors) exécuté si l‘*expression_booléenne* et vraie, et une autre forme avec en plus un bloc d’*instruction(s)* **else** (sinon) exécuté si l’*expression_booléenne* et fausse.

### Exemple

    print "Devinez la lettre à laquelle je pense - pressez la touche"
    # Attend que l'utilisateur presse une touche
    do
      a = key
      pause .01
    until a <> 0
    #
    if chr(a) = "Z" then
       print "Youpi, vous avez trouvé c'est Z !!!"
    else
       print "Eh non, c'est pas ça."
    end if
    #
    end

### Disponible depuis la version

0.9.4g
## Imgload

### Format

**imgload** *x*, *y*, *nomfichier*\
**imgload** *x*, *y*, *echelle*, *nomfichier*\
**imgload** *x*, *y*, *echelle*, *rotation*, *nomfichier*\

### Description

Charge une image à partir d’un fichier et l’affiche dans la fenêtre d’affichage graphique.\
Les paramètre *x* et *y* indiquent ou doit être positionné le centre de l’image dans la fenêtre graphique. Cette façon de faire est différente de toutes les autres fonctionnalités graphiques. L’axe de rotation éventuel sera aussi ce même point central.\
Cette fonction est capable de lire la plupart des formats graphiques courant : BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), et PNG (Portable Network Graphics).\
**Imgload** met éventuellement à l’échelle l’image avec le paramètre *echelle* (1 = taille normale). Elle permet aussi d’effectuer une rotation de l’image en passant le paramètre *rotation* qui est l’angle de rotation en radian dans le sens des aiguilles d’une montre autour du centre de l’image.

### Disponible à partir de la version

0.9.6l## Input

### Format

**input** *expression*, *variablechainedecaracteres*\
**input** *expression*, *variablenumerique*\
**input** *variablechainedecaracteres*\
**input** *variablenumerique*

### Description

Attend que l’utilisateur tape une ligne de texte au clavier dans la fenêtre d’affichage texte de l’environnement. Quand l’utilisateur appui sur Entrée ou Retour, la ligne saisie est stockée dans *variablechainedecaracteres* ou *variablenumerique*.\
Il est possible d’afficher un texte d’invite en fournissant le paramètre optionnel *expression*.\
Si une variable numérique est spécifiée en paramètre mais que la donnée saisie n’est pas numérique, la variable numérique serra alors initialisée à zéro (0).\
Une référence à un élément de tableau peut également être passé en paramètre.
## Key

### Format

key\
key()

### Description

Retourne un entier correspondant au code de la touche clavier pressée. Cette fonction est non bloquante, si aucune touche n’a été pressée depuis le dernier appel de **key** elle retourne zéro (0).

### Remarque

    if key = 47 then print key

ne produira pas l’effet escompté (afficher 47) car appeler **key** deux fois de suite produira deux résultats différents. Le code suivant est correct:

    a = key
    if a = 47 then print a
## LastError

### Format

**lasterror**\
**lasterror** ( )

### Description

Retourne le numéro de la dernière erreur d’exécution.

### Exemple

Voir l’exemple d’utilisation sur la page [Codes d'Erreurs](./errorcodes.md).

### Voir Aussi

[Error Codes](./errorcodes.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Disponible à partir de la version

0.9.6z
## LastErrorExtra

### Format

**lasterrorextra**\
**lasterrorextra** ( )

### Description

Retourne les informations supplémentaires spécifiques à propos d’une erreur.

### Exemple

Voir l’exemple d’utilisation sur la page [Codes d'Erreurs](./errorcodes.md).

### Voir Aussi

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Disponible à partir de la version

0.9.6z
## LastErrorLine

### Format

**lasterrorline**\
**lasterrorline** ( )

### Description

Retourne le numéro de ligne de programme où l’erreur d’exécution s’est produite.

### Exemple

Voir l’exemple d’utilisation dans la page [Codes d'Erreurs](./errorcodes.md) .

### Voir Aussi

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrormessage](./lasterrormessage.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Disponible à partir de la version

0.9.6z
## LastErrorMessage

### Format

**lasterrormessage**\
**lasterrormessage** ( )

### Description

Retourne une chaîne de caractère décrivant la dernière erreur d’exécution.

### Exemple

Voir l’exemple d’utilisation dans la page [Codes d'Erreurs](./errorcodes.md) .

### Voir Aussi

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Offerror](./offerror.md), [Onerror](./onerror.md)

### Disponible à partir de la version

0.9.6z
## Left

### Format

left( *string*, *length*)

### Description

Retourne une portion de la chaîne de caractères passée en paramètre (*string*), la portion retournée commence au premier caractère à gauche et comporte *length* caractères.

### Voir Aussi

[Mid](./mid.md), [Right](./right.md)

### Exemple

    print left("Bonjour", 3)

Affichera

    Bon

### Disponible depuis la version

0.9.5b
## Length

### Format

length( *string* )

### Description

Retourne la longueur de la chaîne de caractères *string* passée en paramètre.

### Exemple

    print length("Bonjour")

Affichera :

    7
## Line

### Format

**line** *x0*, *y0*, *x1*, *y1*\
**line**(*x0*, *y0*, *x1*, *y1*)

### Description

Trace une ligne reliant les points x0,y0 et x1, y1.

### Exemple

    color white
    rect 0,0,300,300
    color black
    line 50,50,200,200
    line 100,200,200,200
    line 100,200,50,50

Affichera\
![Line](@site/static/img/wiki/en/line.png)
## Log

### Format

log ( *expression* )

### Description

Retourne le logarithme népérien (base *e*) de l’*expression*.

### Voir Aussi

[Log10](./log10.md)

### Disponible depuis la version

0.9.5w
## Log10

### Format

log10 ( *expression* )

### Description

Retourne le logarithme décimal (base *10*) de l’*expression*.

### Voir Aussi

[Log](./log.md)

### Disponible depuis la version

0.9.5w
## Lower

### Format

**lower**( *string*)

### Description

Retourne la chaîne de caractère *string* avec tous les caractères alphabétiques convertis en minuscule.

### See Also

[Upper](./upper.md)

    print lower("La Plage Et Le Soleil !")

Affichera :

    la plage et le soleil !

### Disponible depuis la version

0.9.5e
## Mid

### Format

**mid**( *string*, *caractere_debut*, *longueur*)

### Description

Retourne un morceau de la chaîne de caractères *string*, la position du début est donné par *caractere_debut*, et la longueur par *longueur* ou la fin de la chaîne de caractères.

### Voir Aussi

[Left](./left.md), [Right](./right.md)

### Exemple

    print mid("Bonjour", 2, 3)
    print mid("Bonjour", 2, 999)

Affichera :

    onj
    onjour
## Minute

### Format

**minute**\
**minute**()

### Description

Renvoie la minute courante de l’horloge système (0-59).

### Exemple

    # affiche la date
    dim mois$(12)
    mois$ = {"janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"}
    d = day()
    if d=1 then
       ier$="er"
    else
       ier$=""
    endif
    print d + ier$ + " " + mois$[month()] + " " + year()
    # affiche l'heure
    print  hour() + ":" + right("0" + minute(), 2) + ":" + right("0" + second(), 2)

affichera quelque chose comme ceci :\

    1er mai 2013
    21:47:04

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Month](./month.md), [Second](./second.md), [Year](./year.md)

### Première version

0.9.4
## Month

### Format

**month**\
**month**()

### Description

Renvoie le mois en cours de l’horloge système (0-11 : 0=janvier, 1=février, … 11=décembre).

### Exemple

    cls
    dim les_mois$(12)
    les_mois$ = {"janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"}
    d=day()
    if d=1 then
       ier$="er"
    else
       ier$=""
    endif
    print day() + ier$ + " " + les_mois$[month()] + " " + year()

affichera par exemple :

    1er mai 2013

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Second](./second.md), [Year](./year.md)

### Première version

0.9.4
## Mouseb

### Format

**mouseb**\
**mouseb**()

### Description

Retourne le bouton de la souris actuellement pressé (Si la souris se trouve sur la fenêtre d’affichage graphique). Retourne 0 si aucun click n’a été enregistré. Si plusieurs boutons ont été pressés, la valeur retournée est la somme de tous les boutons pressés.

| Valeurs Retournées |                             |
|---------------------|-----------------------------|
| Valeur              | Bouton de la souris pressé |
| 0                   | Aucun                       |
| 1                   | Gauche                      |
| 2                   | Droit                       |
| 4                   | Centre                      |

### Voir Aussi

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mousex](./mousex.md), [Mousey](./mousey.md)

### Disponible à partir de la version

0.9.4d
## Mousex

### Format

**mousex**\
**mousex**()

### Description

Retourne la position en x actuelle ou bien la dernière position en x connue du pointeur de la souris sur la fenêtre d’affichage graphique.

### Voir Aussi

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousey](./mousey.md)

### Disponible à partir de la version

0.9.4d
## Mousey

### Format

**mousey**\
**mousey**()

### Description

Retourne la position en y actuelle ou bien la dernière position en y connue du pointeur de la souris sur la fenêtre d’affichage graphique.

### Voir Aussi

[Clickb](./clickb.md), [Clickclear](./clickclear.md), [Clickx](./clickx.md), [Clicky](./clicky.md), [Mouseb](./mouseb.md), [Mousex](./mousex.md)

### Disponible à partir de la version

0.9.4d
## NetClose

### Format

**netclose**\
**netclose** ( )\
**netclose** *numero_de_socket*\
**netclose** ( *numero_de_socket* )

### Description

Ferme la connexion réseau (socket) spécifée. si *numero_de_socket* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Exemple

Voir la page [NetConnect](./netconnect.md).

### Voir Aussi

[NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Disponible à partir de la version

0.9.6.31
## NetConnect

### Format

**netconnect** *server_name*, *port_number*\
**netconnect** ( *server_name*, *port_number* )\
**netconnect** *socket_number*, *server_name*, *port_number*\
**netconnect** ( *socket_number*, *server_name*, *port_number* )

### Description

Ouvre une connexion (client) réseau sur un serveur. Le paramètre *server_name* donne l’adresse IP ou le nom d’hôte du serveur, tandis que *port_number* donne le numéro de port spécifique sur lequel la connexion doit être établie. Si le numéro de socket *socket_number* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Exemple

Ouvrez deux instances de BASIC-256 sur un même ordinateur. Collez le code “serveur” dans une instance et collez le code “client” dans l’autre. Lancez le code “serveur” en premier, puis le “client”. Vous pouvez voir les messages envoyés de l’un à l’autre des deux processus.

#### Code Serveur

    # Récupère un message et répond
    print "Attente de connexion"
    netlisten 9997
    print "j'ai la connexion"
    do
       while not netdata
          pause .1
          print ".";
       end while
       n$ = netread
       print n$
       netwrite "J'ai reçu '" + n$ + "'."
    until n$ = "fin"
    netclose

Affichera

    Attente de connexion
    j'ai la connexion
    .1 Coucou
    ....2 Coucou
    ........3 Coucou
    ..........4 Coucou
    .....5 Coucou
    .......6 Coucou
    ....7 Coucou
    ..........8 Coucou
    ....9 Coucou
    .....10 Coucou
    .fin

#### Code Client

    # Attendre un message de l'utilisateur et l'envoyer au serveur
    input "entrer un message?", m$
    netconnect "127.0.0.1", 9997
    for t = 1 to 10
       pause rand
       netwrite t + " " + m$
       print netread
    next t
    netwrite "fin"
    print netread
    netclose

Affichera

    entrer un message?Coucou
    J'ai reçu '1 Coucou'.
    J'ai reçu '2 Coucou'.
    J'ai reçu '3 Coucou'.
    J'ai reçu '4 Coucou'.
    J'ai reçu '5 Coucou'.
    J'ai reçu '6 Coucou'.
    J'ai reçu '7 Coucou'.
    J'ai reçu '8 Coucou'.
    J'ai reçu '9 Coucou'.
    J'ai reçu '10 Coucou'.
    J'ai reçu 'end'.

### Voir Aussi

[NetClose](./netclose.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md), [NetWrite](./netwrite.md)

### Disponible à partir de la version

0.9.6.31
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
## NetWrite

### Format

**netwrite** *string*\
**netwrite** ( *string* )\
**netwrite** *socket_number*, *string*\
**netwrite** ( *socket_number*, *string* )

### Description

Envoie une chaîne de caractères vers une connexion réseau ouverte. Si *socket_number* n’est pas fourni, zéro (0) est utilisé par défaut.

### Exemple

Voir la page [NetConnect](./netconnect.md).

### Voir Aussi

[NetClose](./netclose.md), [NetConnect](./netconnect.md), [NetData](./netdata.md), [NetListen](./netlisten.md), [NetRead](./netread.md)

### Disponible depuis la version

0.9.6.31
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
## OffError

### Format

**offerror**

### Description

Arrête le gestionnaire d’erreur mis en place par “[Onerror](./onerror.md)” et restaure la gestion des erreurs par défaut.

### Exemple

Voir l’exemple de la page [Codes d'Erreurs](./errorcodes.md).

### Voir Aussi

[Error Codes](./errorcodes.md), [Lasterror](./lasterror.md), [Lasterrorextra](./lasterrorextra.md), [Lasterrorline](./lasterrorline.md), [Lasterrormessage](./lasterrormessage.md), [Onerror](./onerror.md)

### Disponible à partir de la version

0.9.6z
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
## Pause

### Format

**pause** *seconds*\
**pause** (*seconds*)

### Description

Stoppe l’exécution pendant un certain nombre de secondes. L’argument *seconds* peut être à virgule, donc il est possible d’avoir une précision inférieure à la seconde.

### Exemple

    print "Début de l'attente"
    pause 0.5
    print "Nous avons attendu 1/2 seconde, c'était long ?"
## Pixel

### Format

**pixel** (*x*, *y* )

### Description

Retourne la valeur RGB du pixel aux coordonnés *x*,*y* . Si le pixel n’a jamais été dessiné depuis le dernier appel à la commande [Clg](./clg.md) ou si il a été dessiné avec la couleur CLEAR, cette fonction retournera -1.

### Voir Aussi

[Rgb](./rgb.md)

### Disponible depuis la version

0.9.5m
## Plot

### Format

**plot** *x*, *y*\
**plot** ( *x*, *y* )

### Description

Attribue la couleur courante au pixel situé aux coordonnés *x*,*y*.
## Poly

### Format

**poly** *variable_tableau_numerique*\
**poly** {x1, y1, x2, y2, x3, y3 …}

### Description

Trace un polygone. Les sommets du polygone sont donnés par des coordonnées x,y stockées à la suite les unes des autres dans un tableau. La taille du tableau divisée par 2 définie le nombre de sommets. Cette fonction peut aussi être appelée avec en paramètre un tableau anonyme ( une suite de coordonnées x,y enfermées entre des accolades {}).

### Remarque

Avant la version 0.9.4 il fallait également passer le nombre de sommets en paramètre.

### Voir aussi

[Stamp](./stamp.md)

### Exemple

    color blue
    rect 0,0,300,300
    color green
    dim tri(6)
    tri = {100, 100, 200, 200, 100, 200}
    poly tri

    color blue
    rect 0,0,300,300
    color green
    poly {100, 100, 200, 200, 100, 200}

Les deux codes ci-dessus produiront le résultat suivant:\
![poly.png](@site/static/img/wiki/en/poly.png)
## Print

### Format

**print** *expression* \[ ; \]

### Description

Écrit un texte dans la partie affichage de texte de l’environnement puis saute une ligne. Si le point-virgule (;) est utilisé en fin de commande alors aucune ligne n’est sautée.

### Voir Aussi

[Decimal](./decimal.md)
## PutSlice

### Format

**putslice** *x*, *y*, *chainedecaracteres\$*\
**putslice** *x*, *y*, *chainedecaracteres\$*, *couleurtransparente*

### Description

Dessine le graphique stocké dans *chainedecaracteres\$* sur la fenêtre graphique aux coordonnées *x*, *y*. Si *couleurtransparente* est donnée alors tous les pixels de cette couleur dans *chainedecaracteres\$* ne seront pas dessinés.

### Voir Aussi

[GetSlice](./getslice.md)

### Disponible depuis la version

0.9.6b
## Radians

### Format

**radians** ( *expression* )

### Description

<img src="/en/radians.png" class="align-right" alt="radians.png" />
Retourne la conversion en radians de l’angle *expression* donné en degrés.\

### Voir Aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Sin](./sin.md), [Tan](./tan.md)
## Rand

### Format

**rand**\
**rand**()

### Description

Retourne un nombre au hasard entre 0 et 1. La distribution des valeurs est uniforme.

### Note

Pour faire un nombre au hasard entre d’autre nombres, il faut multiplier ou ajouter des nombres appropriés. Example: Pour generer un nombre entier entre 0 et 10, utiliser: int(rand \* 10).
## Read

### Format

**read**\
**read**()\
**read**(*numerofichier*)

### Description

Lit et retourne un élément depuis un fichier ouvert. Un élément est une chaîne de caractères séparé par un espace, une tabulation ou un caractère de saut de ligne. Si le *numerofichier* n’est pas spécifié, le numéro zéro (0) sera utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
## Readline

### Format

**readline**\
**readline**()\
**readline**(*numerofichier*)

### Description

Lit et retourne une ligne entière depuis un fichier ouvert. Si le *numerofichier* n’est pas spécifié, le numéro zéro (0) sera utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
## Rect

### Format

**rect** *x*,*y*,*largeur*,*hauteur*\
**rect** ( *x*, *y*, *largeur*, *hauteur* )

### Description

Dessine un rectangle de dimensions *largeur* x *hauteur* pixels en utilisant la couleur en cours. Le sommet en haut à gauche du rectangle sera positionné aux coordonnées *x*,*y*.

### Example

    color white
    rect 0,0,300,300
    color red
    rect 50,50,150,150
    color blue
    rect 100,100,150,150
    color green
    rect 10,140,280,20

Affichera :\
![rect.png](@site/static/img/wiki/en/rect.png)
## Redim

### Format

**redim** *variablenumerique*( *entier* )\
**redim** *variablechainedecaracteres\$*( *entier* )\
**redim** *variablenumerique*( *lignes* , *colonnes* )\
**redim** *variablechainedecaracteres\$*( *lignes* , *colonnes* )

### Description

Redimensionne un tableau déjà créé en préservant les données. Si le tableau est agrandit les nouveaux éléments seront initialisés à zéro (0) ou avec une chaîne de caractères vide. Si un tableau est réduit les éléments en trop seront perdus.

### Voir Aussi

[Dim](./dim.md)

### Disponible à partir de la version

0.9.5t
## Refresh

### Format

**refresh**

### Description

Met à jour la fenêtre d’affichage graphique pour dessiner toutes les commandes graphiques passées depuis le dernier appel de **refresh**.\
Cette fonction n’est utilisable qu’en mode [Fastgraphics](./fastgraphics.md).

### Voir Aussi

[Fastgraphics](./fastgraphics.md)
## Rem

### Format

**rem** *commentaire*\
**\#** *commentaire*

### Description

Ligne de commentaire pour aider à comprendre le code. Une ligne qui commence par **rem** ou par **\#** est ignorée par BASIC-256.
## Reset

### Format

**reset**\
**reset()**\
**reset**(*numerofichier*)

### Description

Efface un fichier ouvert. Toutes les données du fichier sont perdues. Si *numerofichier* n’est pas spécifié, le numéro zéro (0) sera utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)
## Rgb

### Format

**rgb**(*red*, *green*, *blue* )

### Description

Retourne la valeur RGB value d’une couleur formée à partir des composantes de *red* (rouge), *green* (vert), et *blue* (bleu). Les valeurs autorisées pour *red*, *green*, et *blue* sont comprises entre 0 et 255 (0 et 255 inclus).

### Voir Aussi

[Color](./color.md), [GetColor](./getcolor.md), [Pixel](./pixel.md)

### Disponible depuis la version

0.9.5m
## Right

### Format

**right**( *string*, *length*)

### Description

Retourne *length* caractères la partie droite de la chaîne de caractères *string*.

### Voir Aussi

[Mid](./mid.md), [Left](./left.md)

### Exemple

    print right("Bonjour", 4)

Affichera

    jour

### Disponible depuis la version

0.9.5b
## Say

### Format

**say** *expression*\
**say** ( *expression* )

### Description

Utilise le moteur du système de synthèse vocale (TTS - Text to Speech) pour dire *l’expression*. Dans GNU/Linux, les bibliothèques FLite ou eSpeak sont nécessaires. Dans Windows, la voix SAPI par défaut actuelle sera utilisée.

### Nouveau dans la version

0.9.4
## Second

### Format

**second**\
**second**()

### Description

Renvoie la seconde courante de la minute courante de l’horloge système (0-59).

### Exemple

    # affiche la date
    dim mois$(12)
    mois$ = {"janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre", "décembre"}
    d = day()
    if d=1 then
       ier$="er"
    else
       ier$=""
    endif
    print d + ier$ + " " + mois$[month()] + " " + year()
    # affiche l'heure
    print  hour() + ":" + right("0" + minute(), 2) + ":" + right("0" + second(), 2)

affichera quelque chose comme ceci :\

    1er mai 2013
    21:47:04

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Year](./year.md)

### Première version

0.9.4
## Seek

### Format

**seek** *position*\
**seek** ( *position* )\
**seek** *numerofichier*, *position*\
**seek** ( *numerofichier*, *position* )

### Description

Déplace l’emplacement de lecture/écriture dans un fichier ouvert vers la *position* donnée (qui est un offset en octets depuis le début du fichier). Si *numerofichier* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Size](./size.md)

### Disponible depuis la version

0.9.4
## Sin

### Format

**sin** ( *expression* )

### Description

Calcul et retourne le sinus de *expression*. *Expression* doit être exprimé en radians.

### Note

La fonction sinus ne produit pas un résultat exacte.

### Voir Aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md), [Tan](./tan.md)

### Exemple

    clg
    color black
    # On trace une ligne d'axe dans la fenêtre d'affichage graphique
    line 0,150,300,150
    # On commence à x=0
    lastx = 0
    lasty = sin(0) * 50 + 150
    # Ensuite on trace une ligne entre chaque point de la courbe de la fonction
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = sin(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

Donnera le resultat suivant :
![Sine Curve](@site/static/img/wiki/fr/sin.jpg)
## Size

### Format

**size**\
**size()**\
**size**(*numerofichier*)

### Description

Retourne la longueur en octets d’un fichier ouvert. Si *numerofichier* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md)

### Disponible depuis la Version

0.9.4
## Sound

### Format

**sound** *fréquence*, *durée*\
**sound** ( *fréquence*, *durée* )\
**sound** ( *tableau* )\
**sound** *tableau*\
**sound** {fréquence1, durée1, fréquence2, durée2, …}

### Description

Joue un son sur le haut parleur de l’ordinateur. La fréquence est donnée en Hz (Hertz) et la durée en millisecondes (il faut 1000 millisecondes pour faire une seconde). Un tableau ou une liste de fréquences et de durées peuvent aussi être passés en paramètre. Cette dernière façon de procéder permet d’éviter les cliquetis entre les fréquences (qui se produit si on passe plusieurs instructions **sound** à la suite.\
Le support du son a été ajouté sous LINUX à partir de la version 0.9.5g. Sous Windows à partir de la version 0.9.5h **sound** utilise le périphérique de son par défaut.

### Voir Aussi

[Volume](./volume.md)
## Spritecollide

### Format

**spritecollide** ( *sprite1*, *sprite2*)

### Description

Cette fonction retourne vrai si les deux “sprites” se chevauchent (ou entrent en collision). **Spritecollide** suppose que les “sprites” sont compris dans un rectangle correspondant à la taille de l’image chargée. Les chevauchements sont calculés en utilisant ces rectangles. Pour les “sprites” de forme ronde ou plus tarabiscotés l’utilisation de cette fonction peut conduire à des sur-détections (les rectangles se chevauchent mais pas les “sprites”).

### Voir Aussi

[Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spritedim

### Format

**spritedim** *n*\
**spritedim** ( *n* )

### Description

Créé *n* emplacements en mémoire pour les “sprites”. Dans les programmes l’accès aux “sprites” passe par l’utilisation d’un nombre compris entre 0 et *n*-1.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spriteh

### Format

**spriteh** ( *numerosprite* )

### Description

Retourne la hauteur en pixel du “sprite” *numerosprite* chargé en mémoire.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spritehide

### Format

**spritehide** *spritenumber*\
**spritehide** ( *spritenumber* )

### Description

Cache un “sprite”. Toutes les informations d’image et de position sont conservés.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spriteload

### Format

**spriteload** *numerosprite*, *nomfichier*\
**spriteload** ( *numerosprite*, *nomfichier* )

### Description

Charge une image depuis le fichier *nomfichier* et la stocke dans le “sprite” *numerosprite*. Le “sprite” est dès lors actif et déplaçable mais il ne s’affichera à l’écran que lors de l’appel à la fonction [Spriteshow](./spriteshow.md).\
**Spriteload** est capable de lire la plupart des formats de fichier image: BMP (Windows Bitmap), GIF (Graphic Interchange Format),JPG/JPEG (Joint Photographic Experts Group), and PNG (Portable Network Graphics).

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spritemove

### Format

**spritemove** *numerosprite*, *dx*, *dy*\
**spritemove** ( *numerosprite*, *dx*, *dy* )

### Description

Déplace le “sprite” *numerosprite* depuis sa position actuelle du nombre spécifié de pixels *dx*, *dy*. Le déplacement est limité à l’écran graphique affiché.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible depuis la version

0.9.6n
## Spriteplace

### Format

**spriteplace** *numerosprite*, *x*, *y*\
**spriteplace** ( *numerosprite*, *x*, *y* )

### Description

Place le centre du “sprite” *numerosprite* à la position de coordonnées *x*, *y*. Tout comme la fonction [Imgload](./imgload.md), le positionnement du “sprite” se fait par rapport à son milieu et non pas par son coin supérieure gauche comme la plupart des autres fonctions graphiques.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spriteshow

### Format

**spriteshow** *spritenumber*\
**spriteshow** ( *spritenumber* )

### Description

Show a hidden sprite.

### See Also

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### New To Version

0.9.6n
## Spriteslice

### Format

**spriteslice** *numerosprite*, *x*, *y*, *largeur*, *hauteur*\
**spriteslice** ( *numerosprite*, *x*, *y*, *largeur*, *hauteur* )

### Description

Créé un sprite à partir d’une région donné de l’affichage graphique définie par le coin supérieur gauche (*x*, *y*), sa *largeur* et sa *hauteur*. Le “sprite” est dès lors actif et déplaçable mais il ne s’affichera à l’écran que lors de l’appel à la fonction [Spriteshow](./spriteshow.md).
Il est recommandé d’effacer la fenêtre graphique avec [Clg](./clg.md) avant de dessiner le “sprite” puis d’utiliser cette fonction. Les zones non dessinées seront transparentes quand le “sprite” sera affiché à l’écran. Les pixels transparents peuvent également être dessinés avec la couleur CLEAR.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6o
## Spritev

### Format

**spritev** ( *nulerosprite* )

### Description

Retourne vraie si le “sprite” est visible.

### Voir aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible depuis la version

0.9.6o
## Spritew

### Format

**spritew** ( *spritenumber* )

### Description

Retourne la largeur en pixel du “sprite” *numerosprite* chargé en mémoire.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritex](./spritex.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spritex

### Format

**spritex** ( *numerosprite* )

### Description

Retourne la coordonnée x du centre du “sprite” *numerosprite*.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Spritey

### Format

**spritey** ( *numerosprite* )

### Description

Retourne la coordonnée y du centre du “sprite” *numerosprite*.

### Voir Aussi

[Spritecollide](./spritecollide.md), [Spritedim](./spritedim.md), [Spriteh](./spriteh.md), [Spritehide](./spritehide.md), [Spriteload](./spriteload.md), [Spritemove](./spritemove.md), [Spriteplace](./spriteplace.md), [Spriteshow](./spriteshow.md), [Spriteslice](./spriteslice.md), [Spritev](./spritev.md), [Spritew](./spritew.md), [Spritey](./spritey.md)

### Disponible à partir de la version

0.9.6n
## Stamp

### Format

**stamp** *x*, *y*, *tableau*\
**stamp** *x*, *y*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *echelle*, *tableau*\
**stamp** *x*, *y*, *echelle*, {x1, y1, x2, y2, x3, y3 …}\
**stamp** *x*, *y*, *echelle*, *rotation*, *tableau*\
**stamp** *x*, *y*, *echelle*, *rotation*, {x1, y1, x2, y2, x3, y3 …}

### Description

Dessine un polygone dons le coin supérieur gauche sera positionné aux coordonnées *x*, *y*. Il est possible de définir une *echelle* de tracé ( 1 = taille normale )ainsi qu’une *rotation* définie à partir de l’origine dans le sens des aiguilles d’une montre en radian.\
Les sommets du polygone sont donnés par des coordonnées x,y stockées à la suite les unes des autres dans un tableau. La taille du tableau divisée par 2 définie le nombre de sommets. Cette fonction peut aussi être appelée avec en paramètre un tableau anonyme ( une suite de coordonnées x,y enfermées entre des accolades {}).

### Voir Aussi

[Poly](./poly.md)

### Exemple

Les deux codes ci-dessous produiront le même affichage.

    clg
    color blue
    rect 0,0,300,300
    color green
    dim tri(6)
    tri = {0, 0, 100, 100, 0, 100}
    # stamp du triangle en 0,0 (taille normale)
    stamp 100, 100, tri
    # stamp du triangle en 200,100 (taille moitié)
    stamp 200, 100, .5, tri

    clg
    color blue
    rect 0,0,300,300
    color green
    # stamp du triangle en 0,0 (taille normale)
    stamp 100, 100, {0, 0, 100, 100, 0, 100}
    # stamp du triangle en 200,100 (taille moitié)
    stamp 200, 100, .5, {0, 0, 100, 100, 0, 100}

Le réultat sera:\
![stamp.png](@site/static/img/wiki/en/stamp.png)

### Disponible depuis la version

0.9.4
## String

### Format

**string** ( *expression* )

### Description

Returns the string representation of a number.

### See Also

[Decimal](./decimal.md)
## System

### Format

**system** *expression*\
**system** ( *expression* )

### Description

Exécute une commande système dans une fenêtre de terminal (invite de commande). **ATTENTION:** Cela peut être une instruction très dangereuse, à n’utiliser que si vous savez exactement ce que vous faites.

### Disponible depuis la version

0.9.5h
## Tan

### Format

**tan** ( *expression* )

### Description

Calcul et retourne la tangente de *expression* qui doit être donné en radians.

### Remarque

La fonction tangente ne produit pas un résultat exacte.

### Voir Aussi

[Acos](./acos.md), [Asin](./asin.md), [Atan](./atan.md), [Sin](./sin.md), [Cos](./cos.md), [Degrees](./degrees.md), [Radians](./radians.md)

### Example

    clg
    color black
    # On trace l'axe des x
    line 0,150,300,150
    # on calcul le premier point
    lastx = 0
    lasty = tan(0) * 50 + 150
    # on trace une ligne entre chaque point de la courbe
    for x = 0 to 300 step 5
       angle = x / 300 * 2 * pi
       y = tan(angle) * 50 + 150
       line lastx, lasty, x, y
       lastx = x
       lasty = y
    next x

Donnera le résultat suivant:\
![](@site/static/img/wiki/fr/tan.jpg)
## Text

### Format

**text** *x*, *y*, *chainedecaracteres*\
**text** ( *x*, *y*, *chainedecaracteres* )

### Description

Dessine le texte *chainedecaracteres* dans la fenêtre graphique aux coordonnées *x*, *y* en utilisant la couleur courante (définie par [Color](./color.md)), et la police de caractère courante (définie par [Font](./font.md)).

### Example

    color grey
    rect 0,0,graphwidth,graphheight
    color red
    font "Times New Roman",18,50
    text 10,100,"This is Times New Roman"
    color darkgreen
    font "Tahoma",28,100
    text 10,200,"This is BOLD!"

Affichera:\
![fonttext.png](@site/static/img/wiki/en/fonttext.png)

### Voir Aussi

[Color](./color.md), [Font](./font.md)

### Disponible à partir de la version

0.9.4
## Upper

### Format

**upper** ( *string* )

### Description

Retourne la chaîne de caractère *string* avec tous les caractères alphabétiques convertis en majuscule.

### See Also

[Lower](./lower.md)

### Example

    print upper("La Plage Et Le Soleil !")

Affichera :

    LA PLAGE ET LE SOLEIL !

### New To Version

0.9.5e
## Volume

### Format

**volume** *niveau*\
**volume** ( *niveau* )

### Description

Ajuste le volume sonore des notes jouées par la commande [Sound](./sound.md). Le volume *niveau* est une valeur numérique comprise entre 0 et 10. Le volume par défaut est 5.

### Voir Aussi

[Sound](./sound.md)

### Disponible à partir de la version

0.9.5i
## WAVplay

### Format

**wavplay** *nom_de_fichier*\
**wavplay** ( *nom_de_fichier* )

### Description

Joue le fichier audio WAV *nom_de_fichier* en arrière plan (de façon asynchrone).

### Voir Aussi

[WAVstop](./wavstop.md) [WAVwait](./wavwait.md)

### Disponible à partir de la version

0.9.4
## WAVstop

### Format

**wavstop**

### Description

Arrête la diffusion du fichier audio WAV en cours (joué de façon asynchrone).

### Voir Aussi

[WAVplay](./wavplay.md) [WAVwait](./wavwait.md)

### Disponible à partir de la version

0.9.4
## While / End While

### Format

**while** *expression_booléenne*\
*instruction(s)*\
**end while**

### Description

Exécute les *instruction(s)* dans la boucle **while** tant que *expression_booléenne* est évaluée à vraie. La boucle **While** / **End While** exécute les *instructions(s)* zéro fois ou plus. Le test est effectué avant de rentrer dans la boucle.

### Voir Aussi

[Do / Until](./dountil.md), [For / Next](./fornext.md)

### Exemple

    r = 1
    while r < 6
      print r
      r = r + 1
    end while

Affichera :

    1
    2
    3
    4
    5

### Disponible à partir de la version

0.9.4g
## Write

### Format

**write** *chainedecaracteres*\
**write** ( *chainedecaracteres* )\
**write** *numerofichier*, *chainedecaracteres*\
**write** ( *numerofichier*, *chainedecaracteres* )

### Description

Écrit *chainedecaracteres* à la fin d’un fichier ouvert. Si *numerofichier* n’est pas spécifié, zéro (0) est utilisé par défaut.

### See Also

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)## Writeline

### Format

**writeline** *chainedecaracteres*\
**writeline** ( *chainedecaracteres* )\
**writeline** *numerofichier*, *chainedecaracteres*\
**writeline** ( *numerofichier*, *chainedecaracteres* )

### Description

Écrit *chainedecaracteres* plus un saut de ligne à la fin d’un fichier ouvert. Si *numerofichier* n’est pas spécifié, zéro (0) est utilisé par défaut.

### Voir Aussi

[Close](./close.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Disponible depuis la Version

0.9.4
## Year

### Format

**year**\
**year**()

### Description

Renvoie l’année en cours de l’horloge système sur 4 chiffres.

### Exemple

    print "la date du jour est le ";
    print day() + "/" + (month() + 1) + "/" + year()

affiche

    la date du jour est le 1/5/2013

### Voir aussi

[Day](./day.md), [Hour](./hour.md), [Minute](./minute.md), [Month](./month.md), [Second](./second.md)

### Première version

0.9.4
