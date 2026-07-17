---
title: "Readbyte"
sidebar_label: "Readbyte"
---

## ReadByte (Function)

### Format

**readbyte**\
**readbyte** ( )\
**readbyte** ( [open_file_number](./integerexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Reads and returns the next byte (8 bits) as a number 0-255 from an open file. If the file number is not specified file number zero (0) will be used.\
File should be opened with the [Openb](./open.md) statement so that ASCII CR/LF translation does not happen.\
In you are reading a serial port opened with [OpenSerial](./openserial.md) no translation will happen. Additionally a -1 will be returned if there was no data in the receive buffer.

### Example

    cls
    f$ = "binary.dat"

    print "new file"
    openb f$
    reset
    for t = 1 to 20
       n = r()
       print n+" ";
       writebyte n
    next t
    print
    close

    print "open and read"
    openb f$
    while not eof
       print readbyte()+" ";
    end while
    print

    print "position to 10 and read"
    seek 10
    while not eof
       print readbyte()+" ";
    end while
    print

    close

    end

    function r()
       r = int(rand*256)
    end function

will display something like

    new file
    181 163 155 23 46 93 122 212 178 225 1 62 113 130 202 52 185 51 37 165 
    open and read
    181 163 155 23 46 93 122 212 178 225 1 62 113 130 202 52 185 51 37 165 
    position to 10 and read
    1 62 113 130 202 52 185 51 37 165 

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [rmdir](./rmdir.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

|         |                   |
|---------|-------------------|
| 1.1.4.0 | Added Serial Port |
