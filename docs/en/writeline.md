---
title: "Writeline"
sidebar_label: "Writeline"
---

## Writeline (Statement)

### Format

**writeline** [string_expression](./stringexpressions.md)\
**writeline** ( [string_expression](./stringexpressions.md) )\
**writeline** [open_file_number](./integerexpressions.md), [string_expression](./stringexpressions.md)\
**writeline** ( [open_file_number](./integerexpressions.md), [string_expression](./stringexpressions.md) )

### Description

Writes [string_expression](./stringexpressions.md) followed by a line ending to an open file, at the place of the file pointer, and moves the pointer to just after what was written. If the file number is not specified file number zero (0) will be used.

[Open](./open.md) puts the file pointer at the beginning of the file, so writing to a file that already holds text overwrites it from the start. To add lines after the text that is already there, move the pointer to the end first with **seek size** (see [Seek](./seek.md) and [Size](./size.md)). To throw the old text away and start again, use [Reset](./reset.md).

In a file opened with [Open](./open.md) the line ending is the one the operating system uses: on Windows it is two characters, a carriage return and a line feed, elsewhere a single line feed.

### Example

    open "list.txt"
    reset
    writeline "apples"
    writeline "bread"
    close

    open "list.txt"
    # without this seek, writeline would write over "apples"
    seek size
    writeline "cheese"
    seek 0
    while not eof
       print rtrim(readline)
    end while
    close

will print

    apples
    bread
    cheese

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
