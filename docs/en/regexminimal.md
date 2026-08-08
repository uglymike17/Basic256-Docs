---
title: "Regexminimal"
sidebar_label: "Regexminimal"
---

## RegexMinimal (Statement)

### Format

**regexminimal** ( [boolean_expression](./booleanexpressions.md) )\
**regexminimal** [boolean_expression](./booleanexpressions.md)

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

[EditVisible](./editvisible.md), [GraphToolBarVisible](./graphtoolbarvisible.md), [GraphVisible](./graphvisible.md), [Include](./include.md),[MainToolbarVisible](./maintoolbarvisible.md), [Maximize](./maximize.md), [OutputToolBarVisible](./outputtoolbarvisible.md), [OutputVisible](./outputvisible.md), [RegexMinimal](./regexminimal.md), [Ostype](./ostype.md), [System](./system.md), [Version](./version.md)

### History

|         |                |
|---------|----------------|
| 1.1.2.7 | New to Version |
