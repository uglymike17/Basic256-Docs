---
title: "Prompt"
sidebar_label: "Prompt"
---

## Prompt (Function)

### Format

**prompt** ( [prompt](./expressions.md) )\
**prompt** ( [prompt](./expressions.md) , *default_expr*)

returns [string_expression](./stringexpressions.md)

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

[Alert](./alert.md), [Confirm](./confirm.md), [Input](./input.md), [Input Float](./input.md), [Input Integer](./input.md), [Input String](./input.md), [Key](./key.md), [Keypressed](./keypressed.md), [Prompt](./prompt.md)

### History

|          |                 |
|----------|-----------------|
| 0.9.9.42 | added statement |
