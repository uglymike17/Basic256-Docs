---
title: "Felder"
sidebar_label: "Felder"
---

### Arrays / Felder

Felder werden mit dem DIM-Befehl definiert. Sie können numerische Daten oder Zeichenketten enthalten.
Die einzelnen Elemente können Mittels des Indexes, der in eckige Klammern eingeschlossen ist, zugegriffen werden.

Der Index des ersten Elementes hat die Nummer 0.

Beispiele:

    meinFeld[4]

greift auf das 5. Element von ‘meinFeld’ zu.

    rem Beispiel für Arrays
    dim Monat$(12)
    Monat$ = {"","Jan","Feb","Mär","Apr","Mai","Jun","Jul","Aug","Sep","Okt","Nov","Dez"}
    print Monat$[5]
