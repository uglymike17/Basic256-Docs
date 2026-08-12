---
title: "Operators"
sidebar_label: "Operators"
---

## Operators

What is an operation and operator…

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
| mod | Modulo | a mod b | Returns the remainder of the integer division of a and b. Word form of `%`. |

### History

|         |                               |
|---------|-------------------------------|
| 2.0.0.0 | Added ‘mod’ alias for modulo. |

#### String Operators

String operators perform an operation called concatenation. Concatenation is joining two or more strings together to make a longer string.

| String Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| ; | Concatenation | a ; b | Always concatenates (converts numbers to strings)<sup>2</sup> |
| \+ | Concatenation | a + b | Appends b to the end of a (If either (or both) a and b are not numbers, see [IsNumeric](./isnumeric.md)). <sup>2</sup> |
| & | Concatenation | a & b | Appends b to the end of a (If either (or both) a and b are not numbers, see [IsNumeric](./isnumeric.md)). <sup>3</sup> |
| \* | Repeat | a \* i | Repeats string a, integer i times. If i \<= 0 an empty string will be returned. |

### History

|         |                                              |
|---------|----------------------------------------------|
| 2.0.0.0 | Added string repeat using the ‘\*’ operator. |

#### Comparison Operators

Comparison operators compare two values and return a [Boolen](./booleanconstants.md) (true/false) value. These Operators are most commonly used in statements like [If](./if.md), [Case](./case.md) and [While](./while.md).

| Comparison Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| = | Equal | a = b | Returns true of two values are equal |
| \< | Less Than | a \< b |  |
| \> | Greater Than | a \> b |  |
| \<= | Less Than or Equal | a \<= b |  |
| \>= | Greatet Than or Equal | a \>= b |  |
| \<\> | Not Equal | a \<\> b |  |

#### Logical Operators

Logical operators work on Boolean (true/false) values. These values often come as [Boolean Constants](./booleanconstants.md) and [Comparison Operators](./comparisonoperators.md).

| Logical Operators |                               |         |          |
|-------------------|-------------------------------|---------|----------|
| Operator          | Name                          | Example | Comments |
| NOT               | Logical Negation              | NOT a   |          |
| AND               | Logical Conjunction           | a AND b |          |
| OR                | Logical Disjunction           | a OR b  |          |
| XOR               | Logical Exclusive Disjunction | a XOR b |          |

##### Not

Also known as Boolean negation.

|           |       |
|-----------|-------|
| not true  | false |
| not false | true  |

##### And

Also known as a Boolean product.

|                 |       |
|-----------------|-------|
| false and false | false |
| false and true  | false |
| true and false  | false |
| true and true   | true  |

##### Or

Also known as Boolean addition.

|                |       |
|----------------|-------|
| false or false | false |
| false or true  | true  |
| true or false  | true  |
| true or true   | true  |

##### Xor

The exclusive or. “You can have you cake XOR you can eat it.”

|                 |       |
|-----------------|-------|
| false xor false | false |
| false xor true  | true  |
| true xor false  | true  |
| true xor true   | false |

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
| &= | Bitwise And into a Variable | a &= 12 | Same as a = a & 12. If either value is not a number the ampersand concatenates instead, so s\$ &= "x" appends to a string. |
| ;= | Concatenate to a Variable | f\$ ;= 9 | Same as f\$ = f\$ ; 9. Always concatenates, converting numbers to strings. |
| ++ | Increment Prefix | ++a | Increment (add one) the the variable and return the value after the increment. (may be applied ONLY to numeric variables or array elements) |
| ++ | Increment Suffix | a++ | Return the value of the variable and then increment the variable by one for the next time it is accessed. (may be applied ONLY to numeric variables or array elements) |
| – | Decrement Prefix | –a | Decrement (subtract one) the variable and return the value after the decrement. (may be applied ONLY to numeric variables or array elements) |
| – | Decrement Suffix | a– | Return the value of the variable and then decrement the variable by one for the next time it is accessed. (may be applied ONLY to numeric variables or array elements) |
| [fill](./fill.md) | Array Fill | a fill 99 | Fills an array (that was previously [dim](./dim.md)ensioned) with a single value (may be a string or numeric expression) |

#### Bitwise Operators

Bitwise operators only work with long integer values (since 1.99.99.19) in the range of −9,223,372,036,854,775,808 to 9,223,372,036,854,775,807. Any attempt to use a number outside this range will produce warnings, errors, and/or unexpected results.

| Bitwise Operators |  |  |  |
|----|----|----|----|
| Operator | Name | Example | Comments |
| ~ | Bitwide Negation | ~a |  |
| & | Bitwise Conjunction | a & b | If one or both values are strings the ampersand operator will concatenate the strings into a single string.<sup>3</sup> |
| \| | Bitwise Disjunction | a \| b | Returns the bits of integer a or integer b. |
| \<\< | Bitwise Shift Left | a \<\< b | Returns the bits of integer a moved b places to the left. Each place doubles the value. |
| \>\> | Bitwise Shift Right | a \>\> b | Returns the bits of integer a moved b places to the right. Each place halves the value, discarding the bits shifted off the end. |

A negative shift count shifts in the opposite direction, so `a << -2` gives the same result as `a >> 2`. Shifting by 64 or more places returns 0. Shifting does not sign extend, so `-8 >> 1` returns a large positive number rather than -4; a left shift can move a bit into the sign position and produce a negative result.

#### Order of Operations

Operators are evaluated according to a strict set of rules. These rules are called the “Order of Operations”.

| Order of Operations |  |  |
|----|----|----|
| Level | Operators | Category/Description |
| 1 | ( ) | Grouping |
| 2 | ^ | Exponent |
| 3 | \- ~ | Unary Minus and Bitwise Negation (NOT) |
| 4 | \* / \\ % mod | Multiplication, Division, Integer Division, and Remainder (Mod) |
| 5 | \+ - | Addition/Concatenation, and Subtraction |
| 6 | \<\< \>\> | Bitwise Shift Left and Right |
| 7 | & \| | Bitwise And and Bitwise Or |
| 8 | \< \<= \> \>= = \<\> | Comparison (Numeric and String) |
| 9 | NOT | Not |
| 10 | AND | Logical And |
| 11 | OR XOR | Logical Or and Logical Exclusive Or |
| 12 | ; | Concatenation |

The concatenation operator `;` binds more loosely than every other operator, so `a ; b or c` is evaluated as `a ; (b or c)`. Use parentheses when you mean `(a ; b) or c`.

#### Links to Separate Pages

- [Arithmetic Operators](./arithmeticoperators.md)
- [String Operators](./stringoperators.md)
- [Comparison Operators](./comparisonoperators.md)
- [Boolean (Logical) Operators](./logicaloperators.md)
- [Variable Operators](./variableoperators.md)
- [Bitwise Operators](./bitwiseoperators.md)
- [Order Of Operations](./orderofoperators.md)
