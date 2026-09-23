---
title: "Explode"
sidebar_label: "Explode"
---

## Explode (Function)

### Format

variable = **explode** ( [string_expression](../en/stringexpressions.md) , [delimiter_expression](../en/stringexpressions.md) )\
variable = **explode** ( [string_expression](../en/stringexpressions.md) , [delimiter_expression](../en/stringexpressions.md) , [boolean_expression](../en/booleanexpressions.md) )\
returns a [list](../en/lists.md) of strings. Typically this function is used to create an array.

### Description

Splits up the [string_expression](../en/stringexpressions.md) into substrings wherever the [delimiter_expression](../en/stringexpressions.md) occurs.

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

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                                                          |
|------------|----------------------------------------------------------|
| 0.9.6.55   | New to Version                                           |
| 1.99.99.55 | now allow explode to be used anywhere a list may be used |
