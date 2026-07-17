---
title: "Instr"
sidebar_label: "Instr"
---

## Instr

### Format

instr *Zeichenkette1*, *Zeichenkette2*

### Beschreibung

Prüft, ob *Zeichenkette2* in *Zeichenkette1* enthalten ist. Wenn ja, wird der Index des Anfangszeichens des ersten Vorkommens von *Zeichenkette2* zurückgeliefert. Anderenfalls gibt der Befehl 0 zurück.

### Note

Alle Indexe/Positionen innerhalb von Zeichenketten beginnen mit 1.

### Beispiel

’ ’ Die Zeile

    print instr("Hallo", "lo")

gibt

    4

im Textfenster aus.’ ’
