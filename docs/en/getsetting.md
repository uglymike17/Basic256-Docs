---
title: "Getsetting"
sidebar_label: "Getsetting"
---

## GetSetting (Function)

### Format

**getsetting** ( [program_name](./stringexpressions.md), [setting_key_name](./stringexpressions.md) )

returns [string_expression](./stringexpressions.md)

### Description

Retrieve a setting from the system registry (or other persistent storage). The [program_name](./stringexpressions.md) and [setting_key_name](./stringexpressions.md) are required by this function to access a previously saved setting. The empty string “” will be returned if the requested setting has not been previously set.

The saved value will be available to other BASIC-256 programs and should remain available for an extended period.

This statement may be disabled because of potential system security issues. Availability may be configured in the IDE by going to the Edit\>Preferences menu.

### See Also

[SetSetting](./setsetting.md)

### Example

    setsetting "thisprogram", "testsetting", "value of setting"
    print getsetting("thisprogram", "testsetting")

will print

    value of setting

### New To Version

0.9.6.38
