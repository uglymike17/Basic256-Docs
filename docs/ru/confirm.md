---
title: "Confirm"
sidebar_label: "Confirm"
---

## Confirm (Function)

### Format

**confirm** ( [prompt](../en/expressions.md) )\
**confirm** ( [prompt](../en/expressions.md), [boolean_expression](../en/booleanexpressions.md))

returns [boolean_expression](../en/booleanexpressions.md)

### Description

This function displays a message box with “Yes” and “No” buttons. A true value will be returned when the user selects “Yes” and false will be returned when “No” is selected. You may set the default button by setting a second argument to true or false.

### Example

    ans = confirm("Do you wish to continue")
    if ans then
       print "continue on"
    else
       print "end everything"
       end
    end if

draws\
![Confirm](@site/static/img/wiki/confirm.png)

### See Also

[Alert](../en/alert.md), [Confirm](../en/confirm.md), [Input](../en/input.md), [Input Float](../en/input.md), [Input Integer](../en/input.md), [Input String](../en/input.md), [Key](../en/key.md), [Keypressed](../en/keypressed.md), [Prompt](../en/prompt.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.42 | New to Version |
