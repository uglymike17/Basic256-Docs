---
title: "Cross"
sidebar_label: "Cross"
---

## Cross (Operator)

### Format

[vectorA](./arrays.md) **cross** [vectorB](./arrays.md)

returns an [array](./arrays.md) where both vectors have three elements, and a [float_expression](./floatexpressions.md) or [integer_expression](./integerexpressions.md) where both have two.

### Description

Returns the cross product of two vectors held in [arrays](./arrays.md).

Where both vectors have **three** elements the answer is the vector at right angles to both of them, and it takes the shape of the left hand vector — a row in gives a row out, a column gives a column.

Where both vectors have **two** elements the answer is a single number: the one that would be the third element of the three dimensional answer. The sign of it says which way round the two vectors turn, which is how a two dimensional program finds a torque, a winding order, or which side of a line a point falls on. It is zero when the two vectors are parallel.

Both vectors must hold the same number of elements, and that number must be two or three. If every element of both is a whole number the answer is made of whole numbers.

**cross** binds more tightly than **[dot](./dot.md)**, so `a cross b dot c` is `(a cross b) dot c` and `a dot b cross c` is `a dot (b cross c)`.

### Example

    c = {1,2,3} cross {4,5,6}
    print c[0,0]; ","; c[0,1]; ","; c[0,2]
    print c dot {1,2,3}

    print {3,4} cross {5,6}
    print {2,4} cross {1,2}

will print

    -3,6,-3
    0
    -2
    0

The zero on the second line is the cross product being at right angles to what made it, and the zero on the last is two parallel vectors.

### Errors

| Error | Cause |
|----|----|
| 136 | An operand is not an array. |
| 137 | The two vectors have different numbers of elements. |
| 138 | The vectors have anything but two or three elements. |
| 139 | An element of the vector has never been given a value. |

### See Also

[Arrays](./arrays.md), [Dot](./dot.md), [Mat](./mat.md), [Norm](./norm.md), [Unit](./unit.md), [Vector Operators](./vectoroperators.md)

### History

|         |                |
|---------|----------------|
| 2.2     | New To Version |
