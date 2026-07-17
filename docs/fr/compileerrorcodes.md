---
title: "Compileerrorcodes"
sidebar_label: "Compileerrorcodes"
---

## Codes d’erreurs de compilation

### Description

Voici la liste des erreurs qui seront détectés au moment d’exécuter un programme. Lorsqu’une de ces erreurs est détecté la compilation s’arrête et le programme n’est pas exécuté.

| Erreur \# | Message d’Erreur | Traduction | Description |
|----|----|----|----|
| -1 | Syntax Error | Erreur de syntaxe | Message générique quand une instruction n’est pas correctement formatée. |
| -2 | END IF without matching IF | END IF sans IF |  |
| -3 | ELSE without matching IF | ELSE sans IF |  |
| -4 | END WHILE without matching WHILE | END WHILE sans WHILE |  |
| -5 | UNTIL without matching DO | UNTIL sans DO |  |
| -6 | NEXT without matching FOR | NEXT sans FOR |  |
| -7 | IF without matching END IF or ELSE statement | IF sans END IF ou sans ELSE |  |
| -8 | ELSE without matching END IF statement | ELSE sans ID |  |
| -9 | WHILE without matching END WHILE statement | WHILE sans END WHILE |  |
| -10 | DO without matching UNTIL statement | DO sans UNTIL |  |
| -11 | FOR without matching NEXT statement | FOR sans NEXT |  |
| -12 | FUNCTION/SUBROUTINE without matching END FUNCTION/SUBROUTINE statement | FUNCION/SUBROUTINE sans END FUNCTION/SUBROUTINE |  |
| -13 | END FUNCTION/SUBROUTINE without matching FUNCTION/SUBROUTINE | END FUNCION/SUBROUTINE sans FUNCTION/SUBROUTINE |  |
| -14 | You may not define a FUNCTION/SUBROUTINE inside an IF, loop, or other FUNCTION/SUBROUTINE | Il est interdit de définir une FUNCTION/SUBROUTINE à l’intérieur d’un IF, d’une boucle ou d’une autre FUNCTION/SUBROUTINE |  |
| -15 | You may not define GLOBAL variable(s) inside an IF, loop, or FUNCTION/SUBROUTINE | Il est interdit de définir une(des) variable(s) GLOBAL à l’intérieur d’un IF, d’une boucle ou d’une FUNCTION/SUBROUTINE |  |
| -16 | You may not define a label or use a GOTO or GOSUB statement in a FUNCTION/SUBROUTINE declaration | Il est interdit de définir une étiquette ou d’utiliser GOTO ou GOSUB dans la déclaration d’une FUNCTION/SUBROUTINE |  |
| -17 | Error assigning a number to a string variable | Error d’assignation d’un nombre dans une variable chaîne de caractères |  |
| -18 | Error assigning a string to a numeric variable | Erreur d’assignation d’une chaîne de caractères dans une variable numérique |  |
