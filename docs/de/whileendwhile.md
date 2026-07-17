---
title: "Whileendwhile"
sidebar_label: "Whileendwhile"
---

## While / End While

### Format

**while** *booleanexpression*\
*statement(s)*\
**end while**

### Description

Execute the *statement(s)* inside the while loop until the *booleanexpression* evaluates to false. While / End While executes the statements zero or more times. The test is done before the code in the loop is executed.

### See Also

[Do / Until](./dountil.md), [For / Next](./fornext.md)

### Example

    r = 1
    while r < 6
      print r
      r = r + 1
    end while

will display

    1
    2
    3
    4
    5

### New To Version

0.9.4g
