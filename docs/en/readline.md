---
title: "Readline"
sidebar_label: "Readline"
---

## Readline (Function)

### Format

**readline**\
**readline** ( )\
**readline** ( [open_file_number](./integerexpressions.md) )

returns [string_expression](./stringexpressions.md)

### Description

Reads and returns the next line from an open file, **including the line ending** that ends it. At the end of the file it returns the empty string; use [Eof](./eof.md) to find out when everything has been read. If the file number is not specified file number zero (0) will be used.

In a file opened with [Open](./open.md) the line ending is returned as a single line feed, chr(10), whichever line endings the file uses. A file opened with [Openb](./open.md) returns the line ending exactly as it is stored, so a line from a Windows file ends with chr(13) + chr(10). The last line of a file has no line ending if the file does not end with one.

Printing the line as it is shows an empty line after it. To get just the text, remove the line ending with [Rtrim](./rtrim.md), which also removes any spaces at the end of the line, or with [Replace](./replace.md).

### Example

    open "lines.txt"
    reset
    writeline "one"
    write "two"
    seek 0
    a = readline
    b = readline
    print length(a) + " " + asc(right(a, 1)) + " " + length(b)
    print "[" + rtrim(a) + "]"
    close

will print

    4 10 3
    [one]

The first line is "one" and its line ending, four characters; the second has no line ending because the file does not end with one.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|     |     |
|-----|-----|
|     |     |
