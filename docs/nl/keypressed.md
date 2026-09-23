---
title: "KeyPressed"
sidebar_label: "KeyPressed"
---

## KeyPressed (Function)

### Format

**keypressed** ( [expression](../en/expressions.md) )

return [boolean_expression](../en/booleanexpressions.md) or [integer_expression](../en/integerexpressions.md)

### Description

The KeyPressed function returns a true or false value if a key is currently pressed, or returns the number of keys that are currently being pressed. Unlike the [key](../en/key.md) function that clears the keyboard buffer, the KeyPressed function does not. This allows for the creation of much more responsive games and other uses of the keyboard.

See the [key](../en/key.md) function for a list of common key codes or see [here](http://qt-project.org/doc/qt-4.8/qt.html#Key-enum) for a complete list codes.

### Example

    ar_down=16777237
    ar_up=16777235
    ar_left=16777234
    ar_right=16777236

    fastgraphics
    x = 150
    y = 150
    color blue

    print "use arrows to move the ball, space to exit"

    while not keypressed(32)
       if keypressed(ar_down) then y = y + 1
       if keypressed(ar_up) then y = y - 1
       if keypressed(ar_right) then x = x + 1
       if keypressed(ar_left) then x = x - 1
       # keep x and y in bounds 0-300
       x = (x + 300) % 300
       y = (y + 300) % 300
       # draw ball
       clg
       circle x,y,10
       refresh
    end while

### See Also

[Alert](../en/alert.md), [Confirm](../en/confirm.md), [Input](../en/input.md), [Input Float](../en/input.md), [Input Integer](../en/input.md), [Input String](../en/input.md), [Key](../en/key.md), [Keypressed](../en/keypressed.md), [Prompt](../en/prompt.md)

### History

|            |                |
|------------|----------------|
| 1.99.99.26 | New To Version |
