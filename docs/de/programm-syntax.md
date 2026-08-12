---
title: "Programmsyntax"
sidebar_label: "Programmsyntax"
---

## Programmsyntax

Ein BASIC256-Programm ist eine Liste von Anweisungen, normalerweise eine pro Zeile, die von oben nach unten ausgeführt werden, bis das Programm [end](./end.md) erreicht oder die letzte Zeile überschreitet. Leerzeilen sind erlaubt und werden ignoriert.

Diese Seite behandelt die Interpunktion und Zeilenregeln der Sprache und — was besonders nützlich ist, wenn Sie bereits ein anderes BASIC kennen — die wenigen Stellen, an denen BASIC256 Dinge anders handhabt. Kommentare, [Maps](#maps-assoziative-arrays) und [Farben](#farbe-stift-und-pinsel) sind diejenigen Themen, die Sie am ehesten überraschen werden. Wenn ein Thema eine eigene Referenzseite hat, ist diese verlinkt.

## Kommentare

Ein Kommentar ist Text, den der Interpreter ignoriert. Beginnen Sie einen Kommentar mit `#` oder mit [rem](./rem.md); er reicht bis zum Ende der Zeile.

    # Diese ganze Zeile ist ein Kommentar
    rem diese hier ebenfalls
    print "hello"      # ein Kommentar kann einer Anweisung folgen
    print "world"      : rem  ...oder nach einem ":" wie hier

Zwei Dinge verwirren Personen, die von anderen BASIC-Dialekten kommen:

- **Das Apostroph `'` ist *kein* Kommentar.** In BASIC256 ist es eine zweite Möglichkeit, eine Zeichenkette (String) zu schreiben, sodass `'abc'` genau denselben Wert hat wie `"abc"`. Wenn Sie `x = 5  ' set x` eingeben und einen Kommentar erwarten, wird der Text im Stil von `' set x '` als String geparst und nicht ignoriert. Verwenden Sie stattdessen `#`.
- **`//` ist ebenfalls kein Kommentar.** BASIC256 erkennt nur `#` und `rem`.

## Anweisungen, Zeilen und zusammengesetzte Anweisungen

Normalerweise steht jede Anweisung in einer eigenen Zeile. Sie können jedoch mehrere Anweisungen in eine Zeile schreiben, indem Sie diese durch einen Doppelpunkt `:` trennen. Dies wird als *zusammengesetzte Anweisung* bezeichnet.

    total = 0 : for t = 1 to 10 : total = total + t : next t : print total

`?` ist ein Kürzel für [print](./print.md), was auf zusammengesetzten Zeilen und bei schnellen Tests praktisch ist:

    ? "x ist " ; x        # dasselbe wie: print "x ist " ; x

Seien Sie vorsichtig, wenn Sie ein einzeiliges [if](./ifthen.md) in eine zusammengesetzte Zeile einfügen. Die einzeilige Form `if condition then statement` behandelt den Rest der Zeile als den *then*-Teil, sodass Anweisungen, die eigentlich bedingungslos nach einem `:` ausgeführt werden sollten, in das `if` hineingezogen werden können. Im Zweifelsfall verwenden Sie die Blockform in eigenen Zeilen:

    if score > 100 then
        print "Sie haben gewonnen"
    end if

## Sprungmarken (Labels)

Eine Zeile kann mit einem *Label* beginnen: ein Name, auf den unmittelbar (ohne Leerzeichen) ein Doppelpunkt folgt. Labels sind das Sprungziel für [goto](./goto.md), [gosub](./gosubreturn.md) und [onerror](./onerror.md). Im Gegensatz zu klassischen BASIC-Dialekten hat BASIC256 **keine Zeilennummern** — Sie benennen die Stellen, zu denen Sie springen möchten. Label-Namen unterscheiden zwischen Groß- und Kleinschreibung (case-sensitive).

    print "vorher"
    gosub display
    print "nachher"
    end

    display:  print "im Unterprogramm"
    return

## Maps (assoziative Arrays)

Dies ist der Unterschied, der Programmierern aus anderen Sprachen am ehesten auffällt. In vielen Sprachen bedeutet `map` "wende eine Funktion auf jedes Element einer Liste an". In BASIC256 ist [map](../en/map.md) eine **Anweisung, die ein assoziatives Array deklariert** — ein Dictionary/Hash, dessen Elemente über einen *String*-Schlüssel statt über einen numerischen Index nachgeschlagen werden.

Deklarieren Sie die Variable mit `map`, und weisen Sie anschließend Elemente mit einem String-Index zu bzw. lesen Sie diese aus:

    map ages
    ages["alice"] = 30
    ages["bob"]   = 42

    print ages["alice"]        # 30
    print length(ages)         # Anzahl der Schlüssel -> 2

Iterieren Sie mit [for each](../en/foreach.md). Die Schleifenvariable erhält jeden **Schlüssel**, und die Schlüssel werden in sortierter Reihenfolge durchlaufen:

    for each name in ages
        print name + " ist " + ages[name]
    next name

Das Auslesen eines Schlüssels, der nie gesetzt wurde, ist *unassigned* (nicht zugewiesen); testen Sie dies mit [assigned](../en/assigned.md) oder [typeof](../en/typeof.md), und entfernen Sie einen Schlüssel mit `unassign`:

    if assigned(ages["carol"]) then print ages["carol"]
    unassign ages["bob"]

Halten Sie die zwei Arten von Sammlungen auseinander: Ein einfaches Array, das mit [dim](./dim.md) erstellt wurde, wird mit Ganzzahlen beginnend bei 0 indiziert, während eine `map` mit Strings indiziert wird. (Beide akzeptieren `[?]`, um nach ihrer Größe zu fragen — siehe [unten](#weitere-unterschiede-auf-einen-blick).)

## Farbe (Stift und Pinsel)

Die [color](./color.md)-Anweisung von BASIC256 ist umfangreicher als das Textmodus-`COLOR vordergrund, hintergrund` älterer BASIC-Dialekte, die aus einer kleinen, festen Palette auswählten. Hier legt `color` den Grafik-**Stift** (die Kontur von Formen und die Farbe von Punkten und Linien) und den **Pinsel** (die Füllung geschlossener Formen) aus dem gesamten 32-Bit-ARGB-Bereich fest.

- **Ein Wert setzt sowohl** den Stift als auch den Pinsel auf diese Farbe.
- **Zwei Werte setzen sie getrennt**: `color stift, pinsel`.

Eine Farbe kann auf fünf Arten angegeben werden:

1. eine integrierte Konstante wie `RED`, `DARKBLUE`, `WHITE` oder `CLEAR`;
2. ein Ganzzahl-ARGB-Wert, wobei der gepackte Wert `((a * 256 + r) * 256 + g) * 256 + b` ist und jede Komponente von 0 bis 255 reicht (`a` = 0 transparent … 255 deckend);
3. die [rgb](./rgb.md)-Funktion mit 3 oder 4 Zahlen, z. B. `rgb(255, 160, 160)`;
4. ein SVG-Farbname als String wie `"firebrick"` oder `"papayawhip"`;
5. ein Hex-String, `"#rrggbb"` oder `"#aarrggbb"`, z. B. `"#fab856"`.

    clg
    color rgb(128, 128, 128)
    rect 0, 0, graphwidth, graphheight

    penwidth 5
    color green, red             # grüne Kontur, rote Füllung
    circle 100, 100, 50

    color "firebrick", "#fab856" # SVG-Name + Hex-String
    rect 150, 150, 100, 100

    color "papayawhip", "clear"  # Pinsel CLEAR -> nicht gefüllt
    rect 175, 175, 100, 100

`CLEAR` ist eine Besonderheit: Ein `CLEAR`-Pinsel zeichnet eine ungefüllte Form, und das Setzen **sowohl** des Stifts als auch des Pinsels auf `CLEAR` löscht Pixel wieder zu Transparenz — nützlich beim Erstellen von Sprites. Verwenden Sie [getcolor](./getcolor.md) und [getbrushcolor](../en/getbrushcolor.md), um die aktuellen Werte auszulesen.

:::warning Veraltete Form
Die alte Anweisung mit drei Zahlen `color r, g, b` ist veraltet und erzeugt eine Compiler-Warnung. Schreiben Sie stattdessen `color rgb(r, g, b)`.
:::

## Weitere Unterschiede auf einen Blick

Für Leser, die von einem anderen BASIC kommen, sind die restlichen wissenswerten Punkte:

- **Keine Zeilennummern.** Die Ablaufsteuerung verwendet Labels mit [goto](./goto.md)/[gosub](./gosubreturn.md) sowie strukturierte Anweisungen wie [for](./fornext.md) und [if](./ifthen.md).
- **String-Variablen enden auf `$`** (`name$`), und Variablennamen unterscheiden zwischen **Groß- und Kleinschreibung**.
- **String-Literale** können mit doppelten *oder* einfachen Anführungszeichen geschrieben werden: `"text"` und `'text'` sind identisch.
- **Ganzzahl-Literale** können sowohl binär (`0b1110`), oktal (`0o177`) oder hexadezimal (`0xff`) als auch dezimal geschrieben werden.
- **`?` bedeutet `print`**, und **`array[?]`** gibt die Anzahl der Elemente in einem Array oder einer Map an — mit `array[?,]` für die Zeilenanzahl und `array[,?]` für die Spaltenanzahl eines zweidimensionalen Arrays.

## Siehe auch

[Rem](./rem.md), [Print](./print.md), [Goto](./goto.md), [Gosub](./gosubreturn.md), [If Then](./ifthen.md), [For / Next](./fornext.md), [For Each / Next](../en/foreach.md), [Map](../en/map.md), [Dim](./dim.md), [Color](./color.md), [Rgb](./rgb.md), [Variablen](./variablen.md)
