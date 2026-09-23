---
title: "Dir"
sidebar_label: "Dir"
---

## Dir (Function)

### Format

**dir** ( )\
**dir** ( *folder_name* )

returns [string_expression](../en/stringexpressions.md)

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

[Changedir](../en/changedir.md), [Close](../en/close.md), [Currentdir](../en/currentdir.md), [Dir](../en/dir.md), [Eof](../en/eof.md), [Exists](../en/exists.md), [Freefile](../en/freefile.md), [Kill](../en/kill.md), [mkdir](../en/mkdir.md), [Open](../en/open.md), [Openb](../en/open.md), [OpenFileDialog](../en/opensavefiledialog.md), [OpenSerial](../en/openserial.md), [Read](../en/read.md), [Readbyte](../en/readbyte.md), [Readline](../en/readline.md), [Reset](../en/reset.md), [SaveFileDialog](../en/opensavefiledialog.md), [Seek](../en/seek.md), [Size](../en/size.md), [Write](../en/write.md), [Writebyte](../en/writebyte.md), [Writeline](../en/writeline.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.55 | New to Version |
