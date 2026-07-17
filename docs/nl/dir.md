---
title: "Dir"
sidebar_label: "Dir"
---

## Dir

### Formaat

**dir** ( )\
**dir** ( *folder* )

### Beschrijving

De functie opent de *folder* om er de namen van de bestanden en folders weer te geven.

### Voorbeeld

    f$ = dir("c:\")
    while f$ <> ""
       print f$
       f$ = dir()
    end while

kan dan bvb dit geven ( op een windows OS )

    $Recycle.Bin
    autoexec.bat
    Backup
    Boot
    bootmgr
    Documents and Settings
    IO.SYS
    MSDOS.SYS
    MSOCache
    pagefile.sys
    Program Files
    ProgramData
    System Volume Information
    temp
    Users
    Windows

### Nieuw vanaf

0.9.6.55

------------------------------------------------------------------------

[vorige](./close.md) \| [Lezen en schrijven](./write_and_read.md) \| [volgende](./reset.md)
