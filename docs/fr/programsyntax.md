---
title: "Syntaxe des programmes"
sidebar_label: "Syntaxe des programmes"
---

## Syntaxe des programmes

Un programme BASIC256 est une liste d'instructions, généralement une par ligne, exécutées du haut vers le bas jusqu'à ce que le programme atteigne [end](./end.md) ou dépasse la dernière ligne. Les lignes vides sont autorisées et ignorées.

Cette page couvre la ponctuation et les règles de ligne du langage, et — ce qui est le plus utile si vous connaissez déjà un autre BASIC — la poignée d'endroits où BASIC256 fait les choses différemment. Les commentaires, les [maps](#maps-tableaux-associatifs) et la [couleur](#couleur-crayon-et-pinceau) sont les éléments les plus susceptibles de vous surprendre. Lorsqu'un sujet dispose de sa propre page de référence, un lien est fourni.

## Commentaires

Un commentaire est un texte ignoré par l'interpréteur. Commencez-en un avec `#` ou avec [rem](./rem.md) ; il s'étend jusqu'à la fin de la ligne.

    # cette ligne entière est un commentaire
    rem celle-ci aussi
    print "hello"      # un commentaire peut suivre une instruction
    print "world"      : rem  ...ou après un ":" comme ceci

Deux choses déroutent souvent les personnes venant d'autres dialectes BASIC :

- **L'apostrophe `'` n'est *pas* un commentaire.** Dans BASIC256, c'est une deuxième façon d'écrire une chaîne de caractères, ainsi `'abc'` a exactement la même valeur que `"abc"`. Si vous tapez `x = 5  ' set x` en vous attendant à un commentaire, le texte du style `' set x '` sera analysé comme une chaîne et non ignoré. Utilisez plutôt `#`.
- **`//` n'est pas non plus un commentaire.** BASIC256 ne reconnaît que `#` et `rem`.

## Instructions, lignes et instructions composées

En temps normal, chaque instruction se trouve sur sa propre ligne. Vous pouvez cependant placer plusieurs instructions sur une même ligne en les séparant par un `:` (deux-points). C'est ce qu'on appelle une *instruction composée*.

    total = 0 : for t = 1 to 10 : total = total + t : next t : print total

`?` est un raccourci pour [print](./print.md), ce qui est pratique sur les lignes composées et lors de tests rapides :

    ? "x est " ; x        # équivalent à : print "x est " ; x

Faites attention lorsque vous mélangez un [if](./ifthen.md) sur une seule ligne dans une ligne composée. La forme sur une ligne `if condition then instruction` traite le reste de la ligne comme la partie *then*, de sorte que les instructions que vous souhaitiez exécuter de manière inconditionnelle après un `:` peuvent se retrouver englobées dans le `if`. En cas de doute, utilisez la forme en bloc sur ses propres lignes :

    if score > 100 then
        print "vous avez gagné"
    end if

## Étiquettes (Labels)

Une ligne peut commencer par une *étiquette* : un nom suivi immédiatement (sans espace) d'un deux-points. Les étiquettes sont la destination de [goto](./goto.md), [gosub](./gosub.md) et [onerror](./onerror.md). Contrairement aux BASICs classiques, BASIC256 n'a **pas de numéros de ligne** — vous nommez les endroits où vous souhaitez sauter. Les noms d'étiquettes sont sensibles à la casse.

    print "avant"
    gosub display
    print "après"
    end

    display:  print "dans le sous-programme"
    return

## Maps (tableaux associatifs)

C'est la différence la plus susceptible de surprendre les programmeurs arrivant d'autres langages. Dans de nombreux langages, `map` signifie "appliquer une fonction à chaque élément d'une liste". Dans BASIC256, [map](../en/map.md) est une **instruction qui déclare un tableau associatif** — un dictionnaire/clé-valeur dont les éléments sont recherchés par une clé *chaîne de caractères* au lieu d'un index numérique.

Déclarez la variable avec `map`, puis attribuez et lisez les éléments avec un indice de type chaîne :

    map ages
    ages["alice"] = 30
    ages["bob"]   = 42

    print ages["alice"]        # 30
    print length(ages)         # nombre de clés -> 2

Parcourez-le avec [for each](../en/foreach.md). La variable de boucle reçoit chaque **clé**, et les clés sont parcourues par ordre trié :

    for each name in ages
        print name + " a " + ages[name] + " ans"
    next name

Lire une clé qui n'a jamais été définie renvoie *unassigned* (non assigné) ; testez cela avec [assigned](../en/assigned.md) ou [typeof](../en/typeof.md), et supprimez une clé avec `unassign` :

    if assigned(ages["carol"]) then print ages["carol"]
    unassign ages["bob"]

Ne confondez pas les deux types de collections : un tableau simple créé avec [dim](./dim.md) est indexé par des entiers commençant à 0, tandis qu'une `map` est indexée par des chaînes. (Toutes deux acceptent `[?]` pour demander leur taille — voir [ci-dessous](#autres-différences-en-un-coup-dœil).)

## Couleur (crayon et pinceau)

L'instruction [color](./color.md) de BASIC256 est plus riche que l'instruction en mode texte `COLOR premier_plan, arrière_plan` des anciens BASICs, qui choisissaient parmi une petite palette fixe. Ici, `color` définit le **crayon** graphique (le contour des formes et la couleur des points et des lignes) et le **pinceau** (le remplissage des formes fermées) sur toute la plage ARGB 32 bits.

- **Une seule valeur définit à la fois** le crayon et le pinceau sur cette couleur.
- **Deux valeurs les définissent séparément** : `color crayon, pinceau`.

Une couleur peut être spécifiée de cinq manières :

1. une constante intégrée telle que `RED`, `DARKBLUE`, `WHITE` ou `CLEAR`, écrite sans guillemets ;
2. une valeur entière ARGB, où la valeur combinée est `((a * 256 + r) * 256 + g) * 256 + b` et chaque composant varie de 0 à 255 (`a` = 0 transparent … 255 opaque) ;
3. la fonction [rgb](./rgb.md) avec 3 ou 4 nombres, ex. `rgb(255, 160, 160)` ;
4. une chaîne de nom de couleur SVG telle que `"firebrick"` ou `"papayawhip"` ;
5. une chaîne hexadécimale, `"#rrggbb"` ou `"#aarrggbb"`, ex. `"#fab856"`.

**Constantes sans guillemets, noms SVG entre guillemets.** Seules les constantes
intégrées du point 1 s’écrivent en mots simples. Un nom de couleur SVG est une
*chaîne* et doit être placé entre guillemets doubles :

    color red            # constante intégrée -- sans guillemets
    color "firebrick"    # nom de couleur SVG -- guillemets obligatoires

Omettre les guillemets ne provoque pas d’erreur de syntaxe, et c’est ce qui
rend l’erreur facile à manquer : `color firebrick` interprète `firebrick` comme
un nom de *variable* et non comme une couleur, si bien que le programme
continue sans appliquer la couleur voulue.

    clg
    color rgb(128, 128, 128)
    rect 0, 0, graphwidth, graphheight

    penwidth 5
    color green, red             # contour vert, remplissage rouge
    circle 100, 100, 50

    color "firebrick", "#fab856" # nom SVG + chaîne hexadécimale
    rect 150, 150, 100, 100

    color "papayawhip", "clear"  # pinceau CLEAR -> non rempli
    rect 175, 175, 100, 100

`CLEAR` est spécial : un pinceau `CLEAR` dessine une forme non remplie, et définir **à la fois** le crayon et le pinceau sur `CLEAR` efface les pixels pour les rendre à nouveau transparents — très utile lors de la création de sprites. Utilisez [getcolor](./getcolor.md) et [getbrushcolor](./getbrushcolor.md) pour lire les valeurs actuelles.

**Forme obsolète.** L'ancienne instruction à trois chiffres `color r, g, b` est obsolète et déclenche un avertissement du compilateur. Écrivez plutôt `color rgb(r, g, b)`.

## Autres différences en un coup d'œil

Pour les lecteurs venant d'un autre BASIC, voici les autres points qui méritent d'être connus :

- **Pas de numéros de ligne.** Le contrôle du flux utilise des étiquettes avec [goto](./goto.md)/[gosub](./gosub.md), et des instructions structurées comme [for](./fornext.md) et [if](./ifthen.md).
- **Les variables de type chaîne se terminent par `$`** (`name$`), et les noms de variables sont **sensibles à la casse**.
- **Les littéraux de chaîne** peuvent être écrits avec des guillemets doubles *ou* simples : `"text"` et `'text'` sont identiques.
- **Les littéraux entiers** peuvent être écrits en binaire (`0b1110`), en octal (`0o177`) ou en hexadécimal (`0xff`) ainsi qu'en décimal.
- **`?` signifie `print`**, et **`tableau[?]`** donne le nombre d'éléments dans un tableau ou une map — avec `tableau[?,]` pour le nombre de lignes et `tableau[,?]` pour le nombre de colonnes d'un tableau à deux dimensions.

## Voir aussi

[Rem](./rem.md), [Print](./print.md), [Goto](./goto.md), [Gosub](./gosub.md), [If Then](./ifthen.md), [For / Next](./fornext.md), [For Each / Next](../en/foreach.md), [Map](../en/map.md), [Dim](./dim.md), [Color](./color.md), [Rgb](./rgb.md), [Variables](./variables.md)
