---
title: "Norm"
sidebar_label: "Norm"
---

## Norm (Function)

### Format

**norm** ( [vector](./arrays.md) )

returns [float_expression](./floatexpressions.md).

### Description

Returns the length of a vector held in an [array](./arrays.md) — the square root of the sum of the squares of its elements, which is the same as the square root of **v [dot](./dot.md) v**.

Any number of elements will do, and the shape does not matter: the elements are read in the order they are stored, so a row, a column, or whatever [Mat Trn](./mat.md) hands back all count as vectors.

The answer is always a decimal number, even where it comes out whole, because a square root is not a whole number except by accident.

**norm** gives the length; **[unit](./unit.md)** gives the direction.

### Example

    print norm({3,4})
    print norm({2,3,6})
    print norm({0,0,0})

    # a length is the square root of the dot product of a vector with itself
    v = {1,2,3}
    print norm(v)
    print sqr(v dot v)

will print

    5.0
    7.0
    0.0
    3.74165738677
    3.74165738677

### Errors

| Error | Cause |
|----|----|
| 136 | The value passed is not an array. |
| 139 | An element of the vector has never been given a value. |

### See Also

[Arrays](./arrays.md), [Cross](./cross.md), [Dot](./dot.md), [Sqr](./sqr.md), [Unit](./unit.md), [Vector Operators](./vectoroperators.md)

### History

|         |                |
|---------|----------------|
| 2.2     | New To Version |
