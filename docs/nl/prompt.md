---
title: "Prompt"
sidebar_label: "Prompt"
---

## Prompt (Function)

### Format

**prompt** ( [prompt](../en/expressions.md) )\
**prompt** ( [prompt](../en/expressions.md) , *default_expr*)

returns [string_expression](../en/stringexpressions.md)

### Description

This function displays a message box with an input box and returns a string value of what the user typed in the box. You may set the default value by setting a second string argument.

### Example

    a$ = prompt("What state do you live?","KY")
    if a$ = "KY" then
       print "Kentucky."
    else
       print "Somewhere Else"
    end if

draws\
![Prompt](@site/static/img/wiki/prompt.png)

### See Also

[Alert](../en/alert.md), [Confirm](../en/confirm.md), [Input](../en/input.md), [Input Float](../en/input.md), [Input Integer](../en/input.md), [Input String](../en/input.md), [Key](../en/key.md), [Keypressed](../en/keypressed.md), [Prompt](../en/prompt.md)

### History

|          |                 |
|----------|-----------------|
| 0.9.9.42 | added statement |
