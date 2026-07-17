---
title: "Variable Operators"
sidebar_label: "Variable Operators"
---

#### Variable Operators

Most operators work with one or two expressions (integers, floating point numbers, strings, and Boolean values), but there are a few operators that work specifically with variables, arrays, and array elements. These operators will directly change the value stored in a variable.

| Variable Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| = | Assign a Number to a Variable | a = 9 |  |
|  |  | z = “Hola.” |  |
|  |  | q\$ = 9.9 |  |
| += | Add to a Variable | a += 7 | Same as a = a + 7 |
|  | Concatenate to a Variable | f += “.” | Same as f = f + “.” |
| -= | Subtract from a Variable | a -= 9 | Same as a = a - 9 |
| \*= | Multiply a Variable | a \*= 2 | Same as a = a \* 2 |
| /= | Divide a Variable | a /= 8 | Same as a = a / 8 |
| ++ | Increment Prefix | ++a | Increment (add one) the the variable and return the value after the increment. (may be applied ONLY to numeric variables or array elements) |
| ++ | Increment Suffix | a++ | Return the value of the variable and then increment the variable by one for the next time it is accessed. (may be applied ONLY to numeric variables or array elements) |
| – | Decrement Prefix | –a | Decrement (subtract one) the variable and return the value after the decrement. (may be applied ONLY to numeric variables or array elements) |
| – | Decrement Suffix | a– | Return the value of the variable and then decrement the variable by one for the next time it is accessed. (may be applied ONLY to numeric variables or array elements) |
| [fill](./fill.md) | Array Fill | a fill 99 | Fills an array (that was previously [dim](./dim.md)ensioned) with a single value (may be a string or numeric expression) |
