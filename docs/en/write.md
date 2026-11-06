---
title: "Write"
sidebar_label: "Write"
---

## Write (Statement)

### Format

**write** [string_expression](./stringexpressions.md)\
**write** ( [string_expression](./stringexpressions.md) )\
**write** [open_file_number](./integerexpressions.md), [string_expression](./stringexpressions.md)\
**write** ( [open_file_number](./integerexpressions.md), [string_expression](./stringexpressions.md) )

### Description

Writes [string_expression](./stringexpressions.md) to an open file, at the place of the file pointer, and moves the pointer to just after what was written. No line ending and no space is added, so a following **write** continues on the same line; use [Writeline](./writeline.md) to end a line. If the file number is not specified file number zero (0) will be used.

[Open](./open.md) puts the file pointer at the beginning of the file, so writing to a file that already holds text overwrites it from the start. Use **seek size** first to add to the end (see [Seek](./seek.md) and [Size](./size.md)), or [Reset](./reset.md) to empty the file.

### Example

    open "scores.txt"
    reset
    write "Ann 18 "
    write "Bob 25"
    seek 0
    print readline
    close

will print

    Ann 18 Bob 25

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|     |     |
|-----|-----|
|     |     |
