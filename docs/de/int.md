---
title: "Int"
sidebar_label: "Int"
---

## Int

### Format

int ( *Ausdruck* )

int ( *Zeichenkettenausdruck* )

### Beschreibung

Umwandlung in eine ganze Zahl (Integer). Int() schneidet die Dezimalstellen einer Fließkommazahl ab oder wandelt eine Zeichenkette (String) in eine ganze Zahl um.

### Beispiel

    c$ = "12a" : i = int(c$)

    print c$
    print i

### Ausgabe

    12a
    12
