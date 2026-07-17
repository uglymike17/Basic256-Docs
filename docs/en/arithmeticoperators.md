---
title: "Arithmetic Operators"
sidebar_label: "Arithmetic Operators"
---

#### Arithmetic Operators

Arithmetic operators are simply the operations of simple math with integer and floating point numbers.

| Arithmetic Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| \+ | Addition | a + b | Add two numeric values. If both are an integer, then the result will be an integer. If one or both are floating point numbers then the result will be floating point. If one or both values are strings the plus operator will concatenate the strings.<sup>2</sup> |
| \- | Subtraction | a - b | Subtract two numeric values. If both were integer and the operation did not overflow then an integer will be returned else a floating point number will be the result. |
| \* | Multiplication | a \* b | Multiply the two numbers. If both were integer and the operation did not overflow then an integer will be returned else a floating point number will be the result. |
| / | Division | a / b | Returns a floating point number of times that b goes into a. |
| \\ | Integer Division | a \\ b | Returns the number of whole times that b goes into a. |
| % | Modulo | a % b | Returns the remainder of the integer division of a and b. |
| mod | ::: | a mod b | ::: |

### History

|         |                               |
|---------|-------------------------------|
| 2.0.0.0 | Added ‘mod’ alias for modulo. |
