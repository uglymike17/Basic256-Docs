---
title: "Input"
sidebar_label: "Input"
---

## Input (Statement)

### Format

**input** [prompt](./expressions.md), [variable](./variables.md)\
**input** [variable](./variables.md)\
**input** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input** [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input** [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input float** [prompt](./expressions.md), [variable](./variables.md)\
**input float** [variable](./variables.md)\
**input float** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input float** [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input float** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input float** [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input integer** [prompt](./expressions.md), [variable](./variables.md)\
**input integer** [variable](./variables.md)\
**input integer** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input integer** [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input integer** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input integer** [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input string** [prompt](./expressions.md), [variable](./variables.md)\
**input string** [variable](./variables.md)\
**input string** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input string** [array_variable](./arrays.md) \[ [index](./integerexpressions.md) \]\
**input string** [prompt](./expressions.md), [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\
**input string** [array_variable](./arrays.md) \[ [row_index](./integerexpressions.md), [column_index](./integerexpressions.md) \]\

### Description

Waits for the user to type a line of text into the text output window. When the user hits the enter or return key, the user’s input is stored in to a [variable](./variables.md).\
Using just INPUT, if the user types a valid number it will be converted and stored as either an integer or a float. If INPUT is unable to convert what is typed, it will be saved as a string.\
You may force the type conversion by specifying INPUT FLOAT, INPUT INTEGER, or INPUT STRING.\
User may optionally be prompted for the input by [prompt](./expressions.md).\
References to array elements may also be specified.

### See Also

[Alert](./alert.md), [Confirm](./confirm.md), [Input](./input.md), [Input Float](./input.md), [Input Integer](./input.md), [Input String](./input.md), [Key](./key.md), [Keypressed](./keypressed.md), [Prompt](./prompt.md)

### History

|  |  |
|----|----|
| 1.99.99.14 | Added INPUT FLOAT, INPUT INTEGER, INPUT STRING and made INPUT try to assign variable the correct type (integer, float, or string) based upon the user entry. |
