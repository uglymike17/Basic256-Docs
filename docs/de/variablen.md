---
title: "Variablen"
sidebar_label: "Variablen"
---

### Variablen

Die Namen von Variablen, die numerische Werte speichern (numerische Variablen), müssen mit einem Buchstaben beginnen; danach können beliebig vielen alphanumerischen Zeichen folgen.

Variablennamen für Zeichenkettenvariablen folgen den gleichen Regeln wie numerische Variablen, sie müssen jedoch mit einem Dollar-Zeichen (\$) enden.

Umlaute sind für Variablennamen nicht erlaubt.

Beispiele:

    rem Numerische-Variablen mit Berechnung
    AnzahlCentEuro = 100
    Euro = 5
    print Euro + " Euro sind " + AnzahlCentEuro * Euro + " Cent."

    rem String-Variable
    Wochentag$ = "Sonnabend"
    print "Der Samstag wird auch " + Wochentag$ + " genannt."
