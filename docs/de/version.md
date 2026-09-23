---
title: "Version"
sidebar_label: "Version"
---

## Version (Function)

### Format

**version**\
**version** ( )\
returns [integer_expression](../en/integerexpressions.md)

### Description

Returns an integer number representing the version number of the BASIC-256 environment currently running.

The number encodes the four-part version as `major * 1000000 + minor * 10000 + patch * 100 + sub`, so BASIC-256 2.1.0.0 returns 2010000.

### Example

    print "You are using version " + version()

Will display something like

    You are using version 2010000

### See Also

[EditVisible](../en/editvisible.md), [GraphToolBarVisible](../en/graphtoolbarvisible.md), [GraphVisible](../en/graphvisible.md), [Include](../en/include.md),[MainToolbarVisible](../en/maintoolbarvisible.md), [Maximize](../en/maximize.md), [OutputToolBarVisible](../en/outputtoolbarvisible.md), [OutputVisible](../en/outputvisible.md), [RegexMinimal](../en/regexminimal.md), [Ostype](../en/ostype.md), [System](../en/system.md), [Version](../en/version.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.32 | New To Version |
