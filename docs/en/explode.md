---
title: "Explode"
sidebar_label: "Explode"
---

## Explode (Function)

### Format

variable = **explode** ( [string_expression](./stringexpressions.md) , [delimiter_expression](./stringexpressions.md) )\
variable = **explode** ( [string_expression](./stringexpressions.md) , [delimiter_expression](./stringexpressions.md) , [boolean_expression](./booleanexpressions.md) )\
returns a [list](./lists.md) of strings. Typically this function is used to create an array.

### Description

Splits up the [string_expression](./stringexpressions.md) into substrings wherever the [delimiter_expression](./stringexpressions.md) occurs.

You may also specify an optional Boolean value to specify that the search will treat upper and lower case letters the same.

### Example

    # explode on spaces
    a$ = "We all live in a yellow submarine."
    print a$
    w$ = explode(a$," ")
    for t = 0 to w$[?]-1
       print "w$["+t+"]=" + w$[t]
    next t

    # explode on A or a
    a$ = "klj;lkjalkjAlkj;"
    print a$
    w$ = explode(a$,"A",true)
    for t = 0 to w$[?]-1
       print "w$["+t+"]=" + w$[t]
    next t

    # explode numbers on comma
    a$="1,2,3,77,foo,9.987,6.45"
    print a$
    n = explode(a$,",")
    for t = 0 to n[?]-1
       print "n["+t+"]=" + n[t]
    next t

will display

    We all live in a yellow submarine.
    w$[0]=We
    w$[1]=all
    w$[2]=live
    w$[3]=in
    w$[4]=a
    w$[5]=yellow
    w$[6]=submarine.
    klj;lkjalkjAlkj;
    w$[0]=klj;lkj
    w$[1]=lkj
    w$[2]=lkj;
    1,2,3,77,foo,9.987,6.45
    n[0]=1
    n[1]=2
    n[2]=3
    n[3]=77
    n[4]=foo
    n[5]=9.987
    n[6]=6.45

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|            |                                                          |
|------------|----------------------------------------------------------|
| 0.9.6.55   | New to Version                                           |
| 1.99.99.55 | now allow explode to be used anywhere a list may be used |
