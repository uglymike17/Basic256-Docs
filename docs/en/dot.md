---
title: "Dot"
sidebar_label: "Dot"
---

## Dot (Operator)

### Format

[vectorA](./arrays.md) **dot** [vectorB](./arrays.md)

returns [float_expression](./floatexpressions.md) or [integer_expression](./integerexpressions.md) depending on the type of the elements.

### Description

Returns the dot product of two vectors — the two [arrays](./arrays.md) multiplied element by element and added up. It is zero exactly when the two vectors are at right angles to each other.

Both vectors must hold the same number of elements, but they need not be the same shape: a row, a column, or whatever [Mat Trn](./mat.md) hands back all count as vectors, because the elements are read in the order they are stored.

If every element of both vectors is a whole number the answer is a whole number, and a fraction anywhere makes the answer a fraction.

**dot** binds more tightly than a comparison and less tightly than **[cross](./cross.md)**, so `a dot b cross c` is `a dot (b cross c)` and `a dot b = 0` is `(a dot b) = 0`.

### Example

    print {1,2,3} dot {4,5,6}
    print {3,4} dot {3,4}

    # the cosine of the angle between two vectors
    a = {1,0}
    b = {0,1}
    print (a dot b) / (norm(a) * norm(b))

will print

    32
    25
    0

### Errors

| Error | Cause |
|----|----|
| 136 | An operand is not an array. |
| 137 | The two vectors have different numbers of elements. |
| 139 | An element of the vector has never been given a value. |

### See Also

[Arrays](./arrays.md), [Cross](./cross.md), [Mat](./mat.md), [Norm](./norm.md), [Unit](./unit.md), [Vector Operators](./vectoroperators.md)

### History

|         |                |
|---------|----------------|
| 2.2     | New To Version |
