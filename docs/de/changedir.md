---
title: "Changedir"
sidebar_label: "Changedir"
---

## Changedir

### Format

**changedir** *expression*\
**changedir** ( *expression* )

### Description

Change the current working directory to the path specified in *expression*. For all systems (including Windows) a forward slash (/) will be used to separate folders in a full path.

### Berechtigungen

Ein Programm darf Dateien in seinem eigenen Ordner frei verwenden. Für alles
außerhalb dieses Ordners wird der Benutzer um Erlaubnis gefragt; wird sie
verweigert, schlägt die Anweisung mit `ERROR_PERMISSION` fehl. Siehe [File and Folder Permissions](../en/filepermissions.md).

### See Also

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### New To Version

0.9.6r
