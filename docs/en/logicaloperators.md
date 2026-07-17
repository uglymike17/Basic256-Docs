---
title: "Logical Operators"
sidebar_label: "Logical Operators"
---

#### Logical Operators

Logical operators work on Boolean (true/false) values. These values often come as [Boolean Constants](./booleanconstants.md) and [Comparison Operators](./comparisonoperators.md).

| Logical Operators |                               |         |          |
|-------------------|-------------------------------|---------|----------|
| Operator          | Name                          | Example | Comments |
| NOT               | Logical Negation              | NOT a   |          |
| AND               | Logical Conjunction           | a AND b |          |
| OR                | Logical Disjunction           | a OR b  |          |
| XOR               | Logical Exclusive Disjunction | a XOR b |          |

##### Not

Also known as Boolean negation.

|           |       |
|-----------|-------|
| not true  | false |
| not false | true  |

##### And

Also known as a Boolean product.

|                 |       |
|-----------------|-------|
| false and false | false |
| false and true  | false |
| true and false  | false |
| true and true   | true  |

##### Or

Also known as Boolean addition.

|                |       |
|----------------|-------|
| false or false | false |
| false or true  | true  |
| true or false  | true  |
| true or true   | true  |

##### Xor

The exclusive or. “You can have you cake XOR you can eat it.”

|                 |       |
|-----------------|-------|
| false xor false | false |
| false xor true  | true  |
| true xor false  | true  |
| true xor true   | false |
