---
title: "Version"
sidebar_label: "Version"
---

## Version (Function)

### Format

**version**\
**version** ( )\
returns [integer_expression](./integerexpressions.md)

### Description

Returns an integer number representing the version number of the BASIC-256 environment currently running.

The number encodes the four-part version as `major * 1000000 + minor * 10000 + patch * 100 + sub`, so BASIC-256 2.1.0.0 returns 2010000.

### Example

    print "You are using version " + version()

Will display something like

    You are using version 2010000

### See Also

[EditVisible](./editvisible.md), [GraphToolBarVisible](./graphtoolbarvisible.md), [GraphVisible](./graphvisible.md), [Include](./include.md),[MainToolbarVisible](./maintoolbarvisible.md), [OutputToolBarVisible](./outputtoolbarvisible.md), [OutputVisible](./outputvisible.md), [RegexMinimal](./regexminimal.md), [Ostype](./ostype.md), [System](./system.md), [Version](./version.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.32 | New To Version |
