---
title: "System"
sidebar_label: "System"
---

## System (Statement)

### Format

**system** [expression](./expressions.md)\
**system** ( [expression](./expressions.md) )

### Description

Execute a system command in a terminal window. WARNING: This can be a very dangerous statement. Only use it if you know what you are doing.

This statement may be disabled because of potential system security issues. Availability may be configured in the IDE by going to the Preferences dialog.

### Example

    system("BASIC256 -r HelloWorld.kbs")

Brings up the program without its source code visible and runs it.

### See Also

[EditVisible](./editvisible.md), [GraphToolBarVisible](./graphtoolbarvisible.md), [GraphVisible](./graphvisible.md), [Include](./include.md),[MainToolbarVisible](./maintoolbarvisible.md), [OutputToolBarVisible](./outputtoolbarvisible.md), [OutputVisible](./outputvisible.md), [RegexMinimal](./regexminimal.md), [Ostype](./ostype.md), [System](./system.md), [Version](./version.md)

### History

|        |                |
|--------|----------------|
| 0.9.5h | New To Version |
