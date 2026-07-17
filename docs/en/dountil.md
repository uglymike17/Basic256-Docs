---
title: "Dountil"
sidebar_label: "Dountil"
---

## Do / Until

### Format

**do**\
[statement(s)](./programsyntax.md)\
**until** *booleanexpression*

### Description

Execute the [statement(s)](./programsyntax.md) inside the do loop whil the *booleanexpression* evaluates to false. Do / Until executes the statements one or more times. The test is done after each time the code in the loop is executed.

### See Also

[For / Next](./fornext.md), [While / End While](./while.md)

### Example

    t = 1
    do
      print t
      t = t + 1
    until t > 5

will print

    1
    2
    3
    4
    5

### New To Version

0.9.4g
