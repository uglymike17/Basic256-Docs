---
title: "Changedir"
sidebar_label: "Changedir"
---

## Changedir

### Formaat

**changedir** *uitdrukking*\
**changedir** ( *uitdrukking* )

### Beschrijving

Met deze functie verandert de huidige ‘werk’ directory naar het pad zoals opgegeven in de *uitdrukking*.\
Voor alle systemen (Windows,Linux) geldt dat een forward slash (/) de verschillende folders van elkaar scheidt.

changedir komt van het Engelse “Change Directory” *(verander van folder)*.

### Toestemming

Een programma mag bestanden in zijn eigen map vrij gebruiken. Voor alles buiten
die map wordt toestemming aan de gebruiker gevraagd; wordt die geweigerd, dan
mislukt de opdracht met `ERROR_PERMISSION`. Zie [File and Folder Permissions](../en/filepermissions.md).

### Zie ook

[Close](./close.md), [Currentdir](./currentdir.md), [Eof](./eof.md), [Open](./open.md), [Read](./read.md), [Readline](./readline.md), [Reset](./reset.md), [Write](./write.md), [Writeline](./writeline.md), [Exists](./exists.md), [Seek](./seek.md), [Size](./size.md)

### Voorbeeld

``` basic4gl
print currentdir ( ) //om huidige actieve directory te zien
changedir "./basic"
print currentdir ( ) // om de nieuwe actieve directory te zien
```

wordt dan

    /home/guest
    /home/guest/basic

### Nieuw vanaf

0.9.6r

------------------------------------------------------------------------

[Lezen en Schrijven](./write_and_read.md) \| [volgende](./close.md)
