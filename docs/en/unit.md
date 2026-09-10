---
title: "Unit"
sidebar_label: "Unit"
---

## Unit (Function)

### Format

**unit** ( [vector](./arrays.md) )

returns an [array](./arrays.md).

### Description

Returns the same vector scaled to length one — a direction with the distance taken out of it. Every element of the vector held in the [array](./arrays.md) is divided by the length of the vector, which is what **[norm](./norm.md)** gives.

The answer keeps the shape of the vector it was given, and every element of it is a decimal number.

This is what a program wants whenever something should move at a set speed however far away its target is: **unit** of the gap between two points is a step of exactly one toward the target, so multiplying it by a speed moves that far and no further.

**unit** of a vector with no length — one whose elements are all zero — is an error, because there is no direction to give back. Where that can happen, check the length with **[norm](./norm.md)** first, or catch the error with [Try](./try.md).

### Example

    u = unit({3,4})
    print u[0,0]; ","; u[0,1]
    print norm(u)

    # move ball_x, ball_y three pixels toward target_x, target_y
    gap = {target_x - ball_x, target_y - ball_y}
    if norm(gap) > 0 then
       step = unit(gap)
       ball_x = ball_x + step[0,0] * 3
       ball_y = ball_y + step[0,1] * 3
    end if

will print

    0.6,0.8
    1.0

### Errors

| Error | Cause |
|----|----|
| 136 | The value passed is not an array. |
| 139 | An element of the vector has never been given a value. |
| 140 | The vector has no length, so it has no direction. |

### See Also

[Arrays](./arrays.md), [Cross](./cross.md), [Dot](./dot.md), [Norm](./norm.md), [Try](./try.md), [Vector Operators](./vectoroperators.md)

### History

|         |                |
|---------|----------------|
| 2.2     | New To Version |
