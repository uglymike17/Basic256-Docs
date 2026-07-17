---
title: "Confirm"
sidebar_label: "Confirm"
---

## Confirm (Function)

### Format

**confirm** ( [prompt](./expressions.md) )\
**confirm** ( [prompt](./expressions.md), [boolean_expression](./booleanexpressions.md))

returns [boolean_expression](./booleanexpressions.md)

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

[Alert](./alert.md), [Confirm](./confirm.md), [Input](./input.md), [Input Float](./input.md), [Input Integer](./input.md), [Input String](./input.md), [Key](./key.md), [Keypressed](./keypressed.md), [Prompt](./prompt.md)

### History

|          |                |
|----------|----------------|
| 0.9.9.42 | New to Version |
