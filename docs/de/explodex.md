---
title: "Explodex"
sidebar_label: "Explodex"
---

## Explodex (Function)

### Format

variable = **explodex** ( [string_expression](../en/stringexpressions.md) , [regular_expression](../en/regularexpressions.md) )

returns a [list](../en/lists.md) of strings that must be assigned to a [variable](../en/variables.md) or used wherever a list may be used.

### Description

Splits up [string_expression](../en/stringexpressions.md) into substrings wherever the regular expression [regular_expression](../en/regularexpressions.md) occurs. Substrings are stored in array defined in the assignment statement. The array will be re-dimensioned to the exact size to store all of the substrings. Unlike ExPLODE, EXPLODEX allows ignoring specific variations (case sentive, spelling etc), see example below ”\[Aa\]\[Nn\]\[Dd\]”.

If the regular expression includes capturing groups, using parenthesis, then the array returned will contain the entire string matched by the regular expression in index 0 and each of the captured groups in subsequent elements.

### Example

    # explode on regex //[,]* //
    a$ = "We all live in a yellow submarine, yellow submarine, yellow, submarine."
    w$ = explodex(a$,"[,]* ")
    for t = 0 to w$[?]-1
       print "w$["+t+"]=" + w$[t]
    next t

    # explode on regex //[Aa][Nn][Dd]//
    a$="1 and 2 AND 3 and 5 aND 99 AND 8.88 aNd 6.45"
    n = explodex(a$,"[Aa][Nn][Dd]")
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
    w$[6]=submarine
    w$[7]=yellow
    w$[8]=submarine
    w$[9]=yellow
    w$[10]=submarine.
    n[0]=1
    n[1]=2
    n[2]=3
    n[3]=5
    n[4]=99
    n[5]=8.88
    n[6]=6.45

### Notes

By default the nature of regular expressions is “greedy”. This behaviour can be changed using the [RegexMinimal](../en/regexminimal.md) statement.

### See Also

[Asc](../en/asc.md), [Chr](../en/chr.md), [Count](../en/count.md), [Countx](../en/countx.md), [Explode](../en/explode.md), [Explodex](../en/explodex.md), [Implode](../en/implode.md), [Instr](../en/instr.md), [Instrx](../en/instrx.md), [Left](../en/left.md), [Length](../en/length.md), [Ljust](../en/ljust.md), [Lower](../en/lower.md), [LTrim](../en/ltrim.md), [MD5](../en/md5.md), [Mid](../en/mid.md), [Midx](../en/midx.md), [Replace](../en/replace.md), [Replacex](../en/replacex.md), [Right](../en/right.md), [Rjust](../en/rjust.md), [RTrim](../en/rtrim.md), [Serialize](../en/serialize.md), [String](../en/string.md), [Trim](../en/trim.md), [Unserialize](../en/unserialize.md), [Upper](../en/upper.md), [Zfill](../en/zfill.md)

### History

|            |                                                          |
|------------|----------------------------------------------------------|
| 0.9.6.56   | New to Version                                           |
| 1.99.99.9  | Added Regex Capturing                                    |
| 1.99.99.55 | now allow explode to be used anywhere a list may be used |
