---
title: "Dir"
sidebar_label: "Dir"
---

## Dir (Function)

### Format

**dir** ( )\
**dir** ( *folder_name* )

returns [string_expression](./stringexpressions.md)

### Description

Open a *folder* to retrieve the names the files or folders that are contained in it.

### Example

    f$ = dir("c:\")
    while f$ <> ""
       print f$
       f$ = dir()
    end while

will display something like

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

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.55 | New to Version |
