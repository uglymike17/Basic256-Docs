---
title: "Dim"
sidebar_label: "Dim"
---

## Dim

### Format

**dim** *numericvariable*( *AnzahlElemente* )\
**dim** *stringvariable\$*( *AnzahlElemente* )\
**dim** *numericvariable*( *rows* , *columns* )\
**dim** *stringvariable\$*( *rows* , *columns* )==== Beschreibung ====
Liefert ein neu erzeugtes Feld der Länge *AnzahlElemente* zurück. Der Typ des erzeugten Feldes (Zeichenkettenfeld oder numerisches Feld) wird durch den Typ von *Variable* bestimmt.

### Note

Auf Elemente des Feldes wird via *Variable*\[*Index*\] zugegriffen. *Index* läuft von 0 bis (AnzahlElemente - 1)

### Beispiel

    dim f(100)
    f[0] = 1
    dim c$(5)
    c$[4] = "Hi!"
