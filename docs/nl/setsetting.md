---
title: "Setsetting"
sidebar_label: "Setsetting"
---

## SetSetting (Statement)

### Format

**setsetting** [program_name](../en/stringexpressions.md), [setting_key_name](../en/stringexpressions.md), [string_expression](../en/stringexpressions.md)\
**setsetting** ( [program_name](../en/stringexpressions.md), [setting_key_name](../en/stringexpressions.md), [string_expression](../en/stringexpressions.md) )

### Description

Save a [string_expression](../en/stringexpressions.md) to the system registry (or other persistent storage). The [program_name](../en/stringexpressions.md) and [setting_key_name](../en/stringexpressions.md) are used to categorize and to make sure that settings accessed when needed and not accidentally changed by another program.

The saved value will be available to other BASIC-256 programs and should remain available for an extended period.

This statement may be disabled because of potential system security issues. Availability may be configured in the IDE by going to the Edit\>Preferences menu.

### Example

    setsetting "thisprogram", "testsetting", "value of setting"
    print getsetting("thisprogram", "testsetting")

will print

    value of setting

### See Also

[GetSetting](../en/getsetting.md)

### History

|          |                |
|----------|----------------|
| 0.9.6.38 | New To Version |
