---
title: "Programm Syntax"
sidebar_label: "Programm Syntax"
---

### Programm-Syntax

Ein Basic256-Programm besteht aus einer Folge von Befehlen / Anweisungen, die durch Zeilenumbrüche getrennt sind und die der Reihe nach ausgeführt werden.

Eine Zeile kann mit einem Label gekennzeichnet werden, um an diese Stelle im Programm mit einem Sprungbefehl (GOTO, GOSUB oder ONERROR) zu verzweigen. Dieser Label besteht aus einem Wort, gefolgt von einem Doppelpunkt.

Mehrere Befehle innerhalb einer Zeile werden mit einem Doppelpunkt “:” getrennt.

Kommentare werden mit dem Befehl REM oder mit dem Doppelkreuz “\#” gekennzeichnet.

Anbei ein kleines Beispiel:

    rem Beispielprogramm 'Hallo Welt'
    print "Hallo ";
    gosub WELT
    end

    WELT: ### Label WELT als Bemerkungszeile
    print "W";
    print "e";: print chr(asc("a")+11);
    print right("Tt",1)
    return
