---
title: "Key"
sidebar_label: "Key"
---

## Key

### Format

key

### Beschreibung

Liefert sofort den zur gerade gedrückten Taste gehörenden ganzzahligen Wert zurück. Wenn keine Taste gedrückt ist, wird der Wert 0 zurückgeliefert

### Note

Dieses Programmstück \\

    if key = 47 then print key

tut nicht das gewünschte, denn der KEY-Befehl wird 2 Mal hintereinander aufgerufen, liefert im allgemeinen also 2 verschiedene Werte zurück. Richtig müßte der Quelltext so aussehen: \\

    a = key
    if a = 47 then print a
