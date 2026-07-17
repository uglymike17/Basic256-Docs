---
title: "Variables"
sidebar_label: "Variables"
---

## Variables

You can think of a variable as a place in the computer‘s memory to store things. Each variable has a name that must begin with a letter, and may consist of any number of letters, numbers, and dollar signs. Their names are case sensitive, the variable ’a’ is not the same as the variable “A”.\
In BASIC-256 you do not need to define a variable before you use it. The variable is created when it is assigned a value for the first time and will retain its value until the program [end](./end.md)s or the variable is [unassign](./unassign.md)ed.

### Example

|  |  |
|----|----|
| a = 99 | Assigns the integer 99 to the variable a |
| nom = “Jim” | Assigns the string “Jim” to the variable nom |
| print “Say hello to ” + nom | Appends the string in nom the the string “Say hello to ” and displays the result |
| a = a + 1 | Takes the value of a and adds one to it, then store the new value back into a |

### See Also

- [Variable Operators](./variableoperators.md)

### History

|           |                             |
|-----------|-----------------------------|
| 1.99.99.8 | variable typing was removed |
