---
title: "Regexminimal"
sidebar_label: "Regexminimal"
---

## RegexMinimal (Statement)

### Format

**regexminimal** ( [boolean_expression](../en/booleanexpressions.md) )\
**regexminimal** [boolean_expression](../en/booleanexpressions.md)

### Description

The underlying Regular Expression library (QRegExp) does not support the use of a ‘?’ to define if a repetition is greedy or lazy, but this property may be set for each RegExp use. The **regexminimal** statement will set the behavious for all statements using regular expressions until the termination of the program. The default value is *false* specifying the “greedy” nature.

### Example

    a$ = "abcdefgabcdefgabcdefg"

    regexminimal false
    print midx(a$,"e.*g")

    regexminimal true
    print midx(a$,"e.*g")

Displays

    efgabcdefgabcdefg
    efg

### See Also

[EditVisible](../en/editvisible.md), [GraphToolBarVisible](../en/graphtoolbarvisible.md), [GraphVisible](../en/graphvisible.md), [Include](../en/include.md),[MainToolbarVisible](../en/maintoolbarvisible.md), [Maximize](../en/maximize.md), [OutputToolBarVisible](../en/outputtoolbarvisible.md), [OutputVisible](../en/outputvisible.md), [RegexMinimal](../en/regexminimal.md), [Ostype](../en/ostype.md), [System](../en/system.md), [Version](../en/version.md)

### History

|         |                |
|---------|----------------|
| 1.1.2.7 | New to Version |
