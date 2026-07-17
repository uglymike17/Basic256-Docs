---
title: "Asc"
sidebar_label: "Asc"
---

## Asc (Function)

### Format

**asc** ( [string_expression](./stringexpressions.md) )

returns [integer_expression](./integerexpressions.md)

### Description

Converts the first character in a [string_expression](./stringexpressions.md) expression to an integer representing it‘s UNICODE value.
^Asc^Chr^Asc^Chr^Asc^Chr^Asc^Chr^Asc^Chr^Asc^Chr^
\|32\|SPACE\|48\|0\|64\|@\|80\|P\|96\|\`\|112\|p\|
\|33\|!\|49\|1\|65\|A\|81\|Q\|97\|a\|113\|q\|
\|34\|“\|50\|2\|66\|B\|82\|R\|98\|b\|114\|r\|
\|35\|#\|51\|3\|67\|C\|83\|S\|99\|c\|115\|s\|
\|36\|\$\|52\|4\|68\|D\|84\|T\|100\|d\|116\|t\|
\|37\|%\|53\|5\|69\|E\|85\|U\|101\|e\|117\|u\|
\|38\|&\|54\|6\|70\|F\|86\|V\|102\|f\|118\|v\|
\|39\|’\|55\|7\|71\|G\|87\|W\|103\|g\|119\|w\|

|     |     |     |     |     |     |     |     |     |     |     |     |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 40  | (   | 56  | 8   | 72  | H   | 88  | X   | 104 | h   | 120 | x   |
| 41  | )   | 57  | 9   | 73  | I   | 89  | Y   | 105 | i   | 121 | y   |
| 42  | \*  | 58  | :   | 74  | J   | 90  | Z   | 106 | j   | 122 | z   |
| 43  | \+  | 59  | ;   | 75  | K   | 91  | \[  | 107 | k   | 123 | {   |
| 44  | ,   | 60  | \<  | 76  | L   | 92  | \\  | 108 | l   | 124 | \|  |
| 45  | \-  | 61  | =   | 77  | M   | 93  | \]  | 109 | m   | 125 | }   |
| 46  | .   | 62  | \>  | 78  | N   | 94  | ^   | 110 | n   | 126 | ~   |
| 47  | /   | 63  | ?   | 79  | O   | 95  | \_  | 111 | o   | 127 |     |

### See Also

[Chr](./chr.md)

### Example

    print asc("A")
    print asc("blue")

will print

    65
    98

### See Also

[Asc](./asc.md), [Chr](./chr.md), [Count](./count.md), [Countx](./countx.md), [Explode](./explode.md), [Explodex](./explodex.md), [Implode](./implode.md), [Instr](./instr.md), [Instrx](./instrx.md), [Left](./left.md), [Length](./length.md), [Ljust](./ljust.md), [Lower](./lower.md), [LTrim](./ltrim.md), [MD5](./md5.md), [Mid](./mid.md), [Midx](./midx.md), [Replace](./replace.md), [Replacex](./replacex.md), [Right](./right.md), [Rjust](./rjust.md), [RTrim](./rtrim.md), [Serialize](./serialize.md), [String](./string.md), [Trim](./trim.md), [Unserialize](./unserialize.md), [Upper](./upper.md), [Zfill](./zfill.md)

### History

|       |                |
|-------|----------------|
| 0.9.4 | New To Version |
