---
title: "Mat"
sidebar_label: "Mat"
---

## Mat Add, Mat Sub, Mat Mul, Mat Trn, Mat Inv (Statements)

### Format

**mat add** [destination](./variables.md) = [matrixA](./arrays.md) + [matrixB](./arrays.md)\
**mat add** [destination](./variables.md) = [matrixA](./arrays.md) + [number](./numericexpressions.md)\
**mat sub** [destination](./variables.md) = [matrixA](./arrays.md) - [matrixB](./arrays.md)\
**mat sub** [destination](./variables.md) = [matrixA](./arrays.md) - [number](./numericexpressions.md)\
**mat mul** [destination](./variables.md) = [matrixA](./arrays.md) \* [matrixB](./arrays.md)\
**mat mul** [destination](./variables.md) = [matrixA](./arrays.md) \* [number](./numericexpressions.md)\
**mat trn** [destination](./variables.md) = [matrixA](./arrays.md)\
**mat inv** [destination](./variables.md) = [matrixA](./arrays.md)

The space in the statement name is optional, so **matadd** and **mat add** are the same statement.

### Description

The **mat** statements do arithmetic on whole [arrays](./arrays.md) at once. They are not a new kind of variable — the matrices are ordinary BASIC-256 arrays, made with [Dim](./dim.md) and read back with square brackets like any other array.

An array is read as **rows by columns**, the way [Dim](./dim.md) writes it. So

    dim Position(200,2)

is a matrix of 200 rows and 2 columns:

    x1    y1
    x2    y2
    ...
    x200  y200

[a\[?,\]](./arraylength.md) gives the number of rows and [a\[,?\]](./arraylength.md) the number of columns. A one dimensional array, **dim** a(10), counts as one row of ten columns.

The destination does not have to exist beforehand, and it does not have to be the right shape — it is given the shape of the answer. The destination may also be one of the sources, so **mat add** Position = Position + Velocity is allowed and does what it says.

Whole numbers stay whole numbers. Adding two matrices of integers gives a matrix of integers, exactly as **a + b** does for two single values, and a fraction anywhere in either matrix makes the answer a fraction. The one exception is **mat inv**, whose answer is always a decimal number.

#### Mat Add and Mat Sub

Add or subtract element by element. Both matrices must have the same number of rows and the same number of columns.

    mat add C = A + B

|                 |     |                   |     |                   |
|-----------------|-----|-------------------|-----|-------------------|
| A =             |     | B =               |     | C =               |
| 1&nbsp;&nbsp;2  |  +  | 10&nbsp;&nbsp;20  |  =  | 11&nbsp;&nbsp;22  |
| 3&nbsp;&nbsp;4  |     | 30&nbsp;&nbsp;40  |     | 33&nbsp;&nbsp;44  |

Where the second operand is a single number instead of a matrix, that number is added to (or subtracted from) every element.

    mat add C = A + 100
    mat sub C = A - offset

#### Mat Mul

**mat mul** is the mathematician's matrix product, not an element by element multiply. The first matrix must have as many columns as the second has rows, and the answer has the rows of the first and the columns of the second.

    mat mul C = A * B

|                 |     |                 |     |                   |
|-----------------|-----|-----------------|-----|-------------------|
| A =             |  \* | B =             |  =  | C =               |
| 1&nbsp;&nbsp;2  |     | 5&nbsp;&nbsp;6  |     | 19&nbsp;&nbsp;22  |
| 3&nbsp;&nbsp;4  |     | 7&nbsp;&nbsp;8  |     | 43&nbsp;&nbsp;50  |

A vector is simply a matrix with one column, so a 3 by 3 matrix multiplied by a 3 by 1 vector gives a 3 by 1 vector.

Where the second operand is a single number, every element is multiplied by it.

    mat mul C = A * 2

#### Mat Trn

Transpose. Row r column c of the answer is row c column r of the source, so an n by m matrix becomes an m by n matrix.

    mat trn T = Position

|                 |     |                          |
|-----------------|-----|--------------------------|
| Position =      |     | T =                      |
| 1&nbsp;&nbsp;2  |     | 1&nbsp;&nbsp;3&nbsp;&nbsp;5 |
| 3&nbsp;&nbsp;4  |     | 2&nbsp;&nbsp;4&nbsp;&nbsp;6 |
| 5&nbsp;&nbsp;6  |     |                          |

#### Mat Inv

The inverse of a square matrix — the matrix that, multiplied by the original, gives the identity matrix. It is worked out by Gaussian elimination with partial pivoting, so it is as accurate as decimal arithmetic allows.

    mat inv Inverse = Transformation

The matrix must be square, and it must not be singular. A singular matrix (one with no inverse) is reported as an error rather than filled with meaningless numbers.

### Errors

|                                                             |                                                    |
|-------------------------------------------------------------|----------------------------------------------------|
| The two matrices do not have the same rows and columns       | **mat add**, **mat sub**                            |
| The first matrix has a different number of columns than the second has rows | **mat mul**                         |
| The matrix is not square                                     | **mat inv**                                        |
| The matrix is singular and has no inverse                    | **mat inv**                                        |
| A source is a single value rather than an array              | all                                                |
| An element of a source has never been given a value          | all                                                |

All of these can be caught with [Try/Catch](./try.md) or [OnError](./onerror.md).

### Example

    dim A(2,2)
    A[0,0] = 1 : A[0,1] = 2
    A[1,0] = 3 : A[1,1] = 4

    dim B(2,2)
    B[0,0] = 5 : B[0,1] = 6
    B[1,0] = 7 : B[1,1] = 8

    mat add C = A + B
    print "A + B     " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

    mat sub C = B - A
    print "B - A     " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

    mat mul C = A * B
    print "A * B     " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

    mat mul C = A * 10
    print "A * 10    " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

    mat trn C = A
    print "transpose " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

    mat inv C = A
    print "inverse   " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

    mat mul C = A * C
    print "A * A-1   " + C[0,0] + " " + C[0,1] + " " + C[1,0] + " " + C[1,1]

outputs

    A + B     6 8 10 12
    B - A     4 4 4 4
    A * B     19 22 43 50
    A * 10    10 20 30 40
    transpose 1 3 2 4
    inverse   -2.0 1.0 1.5 -0.5
    A * A-1   1.0 0.0 0.0 1.0

### Example - A Particle System

This is what **mat** is for. Two hundred particles are held in two matrices, one row each: Position holds an x and a y, Velocity holds a dx and a dy, and Acceleration holds the force on each one. The entire physics step for all two hundred particles is two statements, and there is no [For](./for.md) loop in it at all. The only loop left in the frame is the one that draws.

    N = 200
    W = 500
    H = 500
    R = 2

    graphsize W, H
    fastgraphics

    dim Position(N,2)
    dim Velocity(N,2)
    for i = 0 to N-1
       Position[i,0] = int(rand * W)
       Position[i,1] = int(rand * H)
       Velocity[i,0] = rand * 10 - 5
       Velocity[i,1] = rand * 10 - 5
    next i

    # gravity, as a force on every particle
    dim Acceleration(N,2)
    for i = 0 to N-1
       Acceleration[i,0] = 0
       Acceleration[i,1] = 0.06
    next i

    # a transformation matrix that turns a direction by 3 degrees, and the
    # matrix that undoes it
    ANGLE = radians(3)
    dim Spin(2,2)
    Spin[0,0] = cos(ANGLE)  : Spin[0,1] = sin(ANGLE)
    Spin[1,0] = -sin(ANGLE) : Spin[1,1] = cos(ANGLE)
    dim Unspin(2,2)
    mat inv Unspin = Spin

    frame = 0
    while true

       # the physics: 200 particles, two statements, no loop
       mat add Velocity = Velocity + Acceleration
       mat add Position = Position + Velocity

       # and one matrix multiply turns all 200 directions at once
       swirl = frame % 300
       if swirl < 40 then mat mul Velocity = Velocity * Spin
       if swirl >= 150 and swirl < 190 then mat mul Velocity = Velocity * Unspin

       # bouncing needs a different answer for each particle, which is the one
       # thing a matrix operation can not give -- but all that is left of it is
       # a test and a change of sign
       for i = 0 to N-1
          if Position[i,0] < R then Position[i,0] = R : Velocity[i,0] = abs(Velocity[i,0])
          if Position[i,0] > W-R then Position[i,0] = W-R : Velocity[i,0] = -abs(Velocity[i,0])
          if Position[i,1] < R then Position[i,1] = R : Velocity[i,1] = abs(Velocity[i,1])
          if Position[i,1] > H-R then Position[i,1] = H-R : Velocity[i,1] = -abs(Velocity[i,1]) * 0.92
       next i

       clg
       color rgb(40,120,255)
       for i = 0 to N-1
          circle Position[i,0], Position[i,1], R
       next i
       refresh

       frame = frame + 1
       pause 0.01
    end while

draws\
![Mat](@site/static/img/wiki/mat.png)

The point is not that the program is shorter. It is that the arithmetic happens inside BASIC-256 instead of one interpreted statement at a time, so the same two lines cost about the same whether there are two hundred particles or two thousand. Give each row of Acceleration a different value and every particle has its own force, with no change to the loop.

The program is included with BASIC-256 as **Examples/Simulations/MatrixParticles.kbs**.

### See Also

[ArrayBase](./arraybase.md), [Array Lengths](./arraylength.md), [Arrays](./arrays.md), [Cross](./cross.md), [Dim](./dim.md), [Dot](./dot.md), [Norm](./norm.md), [OnError](./onerror.md), [Redim](./redim.md), [Try](./try.md), [Unit](./unit.md), [Vector Operators](./vectoroperators.md)

### History

|         |                |
|---------|----------------|
| 2.1.2   | New To Version |
