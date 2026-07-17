---
title: "Syntax voor de programmering van BASIC-256"
sidebar_label: "Syntax voor de programmering van BASIC-256"
---

# Syntax voor de programmering van BASIC-256

## Wat is BASIC eigenlijk?

BASIC staat voor *Beginner’s All-purpose Symbolic Instruction Code*. Dit is een programmeertaal die speciaal werd ontwikkeld om mensen die geen informatica gestudeerd hebben, in te leiden in het programmeren. Wil je meer weten over Basic zelf, neem dan een kijkje hier [BASIC](http://nl.wikipedia.org/wiki/BASIC)

## Wat is een Syntax?

Elke taal, ook een gesproken taal, bvb. Nederlands, Frans of Engels, heeft een manier om de woorden en de zinnen op te maken. Dit is zo ook in de wereld van de computers. Om met eigen woorden te zeggen, is de syntax van een taal het geheel van regels die je moet volgen om die taal te kunnen praten.

Een computerprogramma kan je vergelijken met een tekst die uitsluitend uit opdrachten bestaat. De opdrachten zijn dan in de programmeertaal geschreven.
Een reeks opdrachten die samen één geheel vormen noem je een procedure of een functie.

Opdrachten of statements kunnen de volgende elementen bevatten: sleutelwoorden, variabelen, constanten, operatoren, functies.

Wil je iets meer weten over ‘syntax’. Kijk hier dan maar eens: [Syntax](http://nl.wikipedia.org/wiki/Syntaxis_(informatica))

## Wat is een BASIC-256 Syntax?

BASIC-256 programma’s bestaan uit een reeks van opdrachten die van elkaar gescheiden worden door een nieuwe lijn. De manier waarop een lijn wordt opgeschreven moet voldoen aan een paar regels. De opdrachten worden na elkaar uitgevoerd.

Bvb. als je dit als opdrachten meegeeft:

``` basic4gl
print "Dit is de eerste lijn"
print "En dit is de tweede."
```

dan toont de computer het volgende:

    Dit is de eerste lijn
    En dit is de tweede.

Je hebt ook de mogelijkheid om de uitvoering van het [programma te beïnvloeden, aan te sturen,](./programcontrol.md) door een aantal speciale operatoren:

- [Goto](./goto.md) (verwijzing naar een andere plaats in het programma),
- [If / Then](./ifthen.md) (voorwaarden om iets te doen),
- [For / Next](./fornext.md), [Do / Until](./dountil.md), [While / End While](./whileendwhile.md) (verschillende keren hetzelfde laten doen),
- [Gosub / Return](./gosubreturn.md) (subroutines)

## Commentaar toevoegen aan je programma

Een goed programmeur neemt ook de tijd om zijn programma te voorzien met de nodige commentaar. Hierdoor wordt het mogelijk om een programma met anderen te delen. Neem dus de **goede gewoonte** aan om je programma’s te **voorzien van zinnige commentaar**. Zelfs als je de enige bent die je programma’s gaat bewerken. zal jij nog weten wat je 2 jaar geleden hebt geprogrammeerd en waarom?

Dit doe je door *\#* toe te voegen.

``` basic4gl
# Dit programma zal 2 lijnen printen
print "1st line"
print "2nd Line"
```

[Begin](./start.md) \| [Volgende](./numericconstants.md)
