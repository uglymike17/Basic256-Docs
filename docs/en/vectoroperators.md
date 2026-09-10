---
title: "Vector Operators"
sidebar_label: "Vector Operators"
---

## Dot, Cross, Norm, Unit

### Format

[vectorA](./arrays.md) **dot** [vectorB](./arrays.md)\
[vectorA](./arrays.md) **cross** [vectorB](./arrays.md)\
**norm** ( [vector](./arrays.md) )\
**unit** ( [vector](./arrays.md) )

### Description

The vector operators do the arithmetic of vectors on ordinary BASIC-256 [arrays](./arrays.md). They are not a new kind of variable — a vector is just an array holding the numbers of the vector, made with [Dim](./dim.md) or written out as an [array literal](./arrays.md).

    Velocity = {3, 4}          # a two dimensional vector
    Facing = {0, 0, 1}         # a three dimensional one

An array is read as a plain list of its elements, in the order they are stored, so a row, a column, and whatever [Mat Trn](./mat.md) hands back all work as vectors. Only the **number** of elements has to agree between the two sides — not the shape.

| Operator | Gives | Description |
|----|----|----|
| a **dot** b | a number | The dot product. How much the two vectors point the same way. |
| a **cross** b | a vector, or a number | The cross product. A vector when both sides have three elements; the single turning number when both have two. |
| **norm**(v) | a number | The length of the vector. |
| **unit**(v) | a vector | The same vector scaled to length one. |

Whole numbers stay whole numbers. The dot product of two vectors of integers is an integer, exactly as **a \* b** is for two single values, and a fraction anywhere makes the answer a fraction. **norm** and **unit** are the exception — a square root is not a whole number except by accident, so their answers are always decimal numbers.

#### Dot

**a dot b** multiplies the two vectors element by element and adds up the results.

    print {1,2,3} dot {4,5,6}

prints

    32

because 1×4 + 2×5 + 3×6 is 32.

The dot product is the same whichever way round it is written, and it is zero exactly when the two vectors are at right angles to each other. It is also **norm**(a) × **norm**(b) × the cosine of the angle between them, which is the usual way to get that angle:

    cosine = (a dot b) / (norm(a) * norm(b))
    print degrees(acos(cosine))

Both vectors must have the same number of elements. Any number of elements will do — two, three, or a hundred.

#### Cross

**a cross b** in three dimensions gives the vector at right angles to both of them:

    c = {1,2,3} cross {4,5,6}
    print c[0,0]; ","; c[0,1]; ","; c[0,2]

prints

    -3,6,-3

The answer takes the shape of the left hand vector, so a row crossed with anything gives a row and a column gives a column.

**a cross b** in two dimensions gives a single number instead of a vector — the number that would be the third element of the three dimensional answer:

    print {3,4} cross {5,6}

prints

    -2

The sign of that number says which way round the two vectors turn, which is how a two dimensional program finds a torque, a winding order, or which side of a line a point falls on. It is zero when the two vectors are parallel.

A cross product of anything but two or three elements is an error.

#### Norm

**norm**(v) is the length of the vector — the square root of the sum of the squares of its elements, which is the same as the square root of **v dot v**.

    print norm({3,4})

prints

    5.0

It works for any number of elements, and the answer is always a decimal number.

#### Unit

**unit**(v) is the same vector scaled to length one, in the shape it came in. It is a direction with the distance taken out of it, which is what a program wants whenever something should move at a set speed however far away its target is.

    u = unit({3,4})
    print u[0,0]; ","; u[0,1]

prints

    0.6,0.8

Every element of the answer is a decimal number. **unit** of a vector with no length — one whose elements are all zero — is an error, because there is no direction to give back.

#### Order of Operations

**cross** binds more tightly than **dot**, and both bind more tightly than a comparison, so the two triple products read the way they are written on paper and a dot product may be compared without brackets:

    a dot b cross c        is    a dot (b cross c)
    a cross b dot c        is    (a cross b) dot c
    if a dot b = 0 then    is    if (a dot b) = 0 then

See [Order of Operations](./orderofoperators.md) for where they sit among the rest.

### Example

    # the angle between two vectors, and the direction at right angles to both

    a = {1, 0, 0}
    b = {0, 1, 0}

    print "a dot b       = "; a dot b
    print "angle         = "; degrees(acos((a dot b) / (norm(a) * norm(b)))); " degrees"

    c = a cross b
    print "a cross b     = "; c[0,0]; ","; c[0,1]; ","; c[0,2]
    print "at right angles to a  "; (c dot a) = 0
    print "at right angles to b  "; (c dot b) = 0

    print "length of {3,4,12} = "; norm({3,4,12})

    u = unit({3, 4})
    print "unit of {3,4} = "; u[0,0]; ","; u[0,1]
    print "and its length = "; norm(u)

will print

    a dot b       = 0
    angle         = 90 degrees
    a cross b     = 0,0,1
    at right angles to a  1
    at right angles to b  1
    length of {3,4,12} = 13.0
    unit of {3,4} = 0.6,0.8
    and its length = 1.0

### Errors

All of these may be caught with [Try](./try.md) or [OnError](./onerror.md).

| Error | Cause |
|----|----|
| 136 | An operand is not an array. |
| 137 | **dot** or **cross** was given two vectors with different numbers of elements. |
| 138 | **cross** was given vectors of anything but two or three elements. |
| 139 | An element of the vector has never been given a value. |
| 140 | **unit** was given a vector of length zero. |

### A Longer Example

The program **Examples/Physics/VectorProducts.kbs**, included with BASIC-256, takes each of the four operators in turn: the angle between two arrows with **dot**, which side of a line a point falls on with the two dimensional **cross**, a ball that chases the mouse at a steady speed with **unit**, and a turning triangle lit by the direction it faces — which is **unit** of the **cross** product of two of its edges, shaded by its **dot** product with the light.

### See Also

[Array Lengths](./arraylength.md), [Arrays](./arrays.md), [Dim](./dim.md), [Mat](./mat.md), [OnError](./onerror.md), [Operators](./operators.md), [Order Of Operations](./orderofoperators.md), [Sqr](./sqr.md), [Try](./try.md)

### History

|         |                |
|---------|----------------|
| 2.2     | New To Version |
