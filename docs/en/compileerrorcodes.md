---
title: "Compiler Error Codes"
sidebar_label: "Compiler Error Codes"
---

## Compiler Error Codes

### Description

This is a list of errors that will be reported when a program is run. Once an error is encountered compiling is stopped and the program will not be executed.

| Error \# |  | Error Message | Description |
|----|----|----|----|
| 0 | COMPERR_NONE |  |  |
| 1 | COMPERR_SYNTAX | Syntax Error | General compiler message when a statement is not formatted correctly. |
| 2 | COMPERR_ENDIF | END IF without matching IF |  |
| 3 | COMPERR_ELSE | ELSE without matching IF |  |
| 4 | COMPERR_ENDWHILE | END WHILE without matching WHILE |  |
| 5 | COMPERR_UNTIL | UNTIL without matching DO |  |
| 6 | COMPERR_NEXT | NEXT without matching FOR |  |
| 7 | COMPERR_IFNOEND | IF without matching END IF or ELSE statement |  |
| 8 | COMPERR_ELSENOEND | ELSE without matching END IF statement |  |
| 9 | COMPERR_WHILENOEND | WHILE without matching END WHILE statement |  |
| 10 | COMPERR_DONOEND | DO without matching UNTIL statement |  |
| 11 | COMPERR_FORNOEND | FOR without matching NEXT statement |  |
| 12 | COMPERR_FUNCTIONNOEND | FUNCTION/SUBROUTINE without matching END FUNCTION/SUBROUTINE statement |  |
| 13 | COMPERR_ENDFUNCTION | END FUNCTION/SUBROUTINE without matching FUNCTION/SUBROUTINE |  |
| 14 | COMPERR_FUNCTIONNOTHERE | You may not define a FUNCTION/SUBROUTINE inside an IF, loop, or other FUNCTION/SUBROUTINE |  |
| 15 | COMPERR_GLOBALNOTHERE | You may not define GLOBAL variable(s) inside an IF, loop, or FUNCTION/SUBROUTINE |  |
| 16 | COMPERR_FUNCTIONGOTO | You may not define a label or use a GOTO or GOSUB statement in a FUNCTION/SUBROUTINE declaration |  |
| 19 | COMPERR_RETURNVALUE |  |  |
| 21 | COMPERR_CONTINUEDO |  |  |
| 22 | COMPERR_CONTINUEFOR |  |  |
| 23 | COMPERR_CONTINUEWHILE |  |  |
| 24 | COMPERR_EXITDO |  |  |
| 25 | COMPERR_EXITFOR |  |  |
| 26 | COMPERR_EXITWHILE |  |  |
| 27 | COMPERR_INCLUDEFILE |  |  |
| 28 | COMPERR_INCLUDEDEPTH |  |  |
| 29 | COMPERR_TRYNOEND |  |  |
| 30 | COMPERR_CATCH |  |  |
| 31 | COMPERR_CATCHNOEND |  |  |
| 32 | COMPERR_ENDTRY |  |  |
| 33 | COMPERR_NOTINTRY |  |  |
| 34 | COMPERR_NOTINTRYCATCH |  |  |
| 35 | COMPERR_ENDBEGINCASE |  |  |
| 36 | COMPERR_ENDENDCASEBEGIN |  |  |
| 37 | COMPERR_ENDENDCASE |  |  |
| 38 | COMPERR_BEGINCASENOEND |  |  |
| 39 | COMPERR_CASENOEND |  |  |

### History

|           |                                                    |
|-----------|----------------------------------------------------|
| 1.99.99.9 | Corrected and updated list of compiler error codes |
