---
title: "Arrays"
sidebar_label: "Arrays"
---

## Arrays

Arrays are allocated using the [DIM](./dim.md) command or re-sized using [REDIM](./redim.md). They may hold numeric or string data. Access to specific elements in an array is accomplished by using square brackets along with the integer offset of the element, starting from zero. Arrays may also be dimensioned and accessed using two dimensions.\
[Array lengths](./arraylength.md) may also be extracted using \[?\] \[?,\] and \[,?\] on the end of the array variable.

By default arrays may be indexed using an integer in the range of 0 to array_length-1. You may optionally change the numeric array index to a range of 1 to array_length by using the [ArrayBase](./arraybase.md) statement.

### Assigning values to an array

Values may be assigned to an array in one of five ways:

1\. By using the [Dim](./dim.md) statement to reserve space for the array in the computer’s memory and then assigning each individual element.

    dim a(10)
    for t = 0 to a[?]-1
        a[t] = t
    next t

2\. By using a [list](./lists.md) to create and assign an array.

    a = {{0,1,2},{3,4,5},{6,7,8}}

or

    b[] = {1,2,3,4}

3\. By using the [Dim](./dim.md) statement to copy an existing array into another array.

    a = {1,2,3,4}
    dim b = a[]

4\. By using the [Explode](./explode.md) or [Explodex](./explodex.md) functions to split a string into an array.

    a = explode("how now brown cow"," ")

5\. Using the [fill](./fill.md) assignment operator (with or without [dim](./dim.md))

    dim c fill "stuff"
    dim e[] fill 0
    b fill ""
    a[] fill -1

### Passing Arrays of Data to Builtin Functions and Statements

When passing an array of data, like to the [sound](./sound.md) statement, you may include an empty set of brackets \[\] after the variable name. This was added to reduce the confusion between a regular variable and a variable containing an array of values.

### History

|            |                                              |
|------------|----------------------------------------------|
| 1.99.99.55 | added dim logic to copy one array to another |
| 1.99.99.57 | added the fill assignment operator           |
| 1.99.99.72 | added the array passing note                 |
| 2.0.0.0    | Added ability to change array base           |
