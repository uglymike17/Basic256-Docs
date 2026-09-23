---
title: "System"
sidebar_label: "System"
---

## System (Statement)

### Format

**system** [expression](../en/expressions.md)\
**system** ( [expression](../en/expressions.md) )

### Description

Execute a system command in a terminal window. WARNING: This can be a very dangerous statement. Only use it if you know what you are doing.

This statement may be disabled because of potential system security issues. Availability may be configured in the IDE by going to the Preferences dialog.

### Example

    system("BASIC256 -r HelloWorld.kbs")

Brings up the program without its source code visible and runs it.

### See Also

[EditVisible](../en/editvisible.md), [GraphToolBarVisible](../en/graphtoolbarvisible.md), [GraphVisible](../en/graphvisible.md), [Include](../en/include.md),[MainToolbarVisible](../en/maintoolbarvisible.md), [Maximize](../en/maximize.md), [OutputToolBarVisible](../en/outputtoolbarvisible.md), [OutputVisible](../en/outputvisible.md), [RegexMinimal](../en/regexminimal.md), [Ostype](../en/ostype.md), [System](../en/system.md), [Version](../en/version.md)

### History

|        |                |
|--------|----------------|
| 0.9.5h | New To Version |
