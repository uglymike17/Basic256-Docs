---
title: "Open"
sidebar_label: "Open"
---

## Open

### Format

open *Dateiname*

### Beschreibung

Öffnet eine Datei zum Lesen und Schreiben. Der *Dateiname* muß als Zeichenkette angegeben werden

              und kann eine absolute oder relative Pfadangabe enthalten.

### Note

Zu einem gegebenen Zeitpunkt kann nur eine Datei geöffnet sein. Wenn eine neue Datei geöffnet wird, während eine andere Datei bereits offen ist, wird diese andere Datei geschlossen.

### Berechtigungen

Ein Programm darf Dateien in seinem eigenen Ordner frei verwenden. Für alles
außerhalb dieses Ordners wird der Benutzer um Erlaubnis gefragt; wird sie
verweigert, schlägt die Anweisung mit `ERROR_PERMISSION` fehl. Siehe [File and Folder Permissions](../en/filepermissions.md).

### Siehe auch

Close, Read, Write, Reset
