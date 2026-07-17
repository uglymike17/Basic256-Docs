---
title: "Dir"
sidebar_label: "Dir"
---

## Dir

### Format

**dir** ( )\
**dir** ( *folder* )

### Description

Ouvre un dossier *folder* pour récupérer les noms des fichiers et des dossiers qu’il contient.

### Exemple

    f$ = dir("c:\")
    while f$ <> ""
       print f$
       f$ = dir()
    end while

Produira quelque chose comme :

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

### Disponible à partir de la version

0.9.6.55
