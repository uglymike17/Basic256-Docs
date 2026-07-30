---
title: "Commandline"
sidebar_label: "Commandline"
---

## Command Line Opties

### Beschrijving

Als je Basic-256 uitvoert vanuit de command line (shell of cmd) dan kan je een aantal opties meegeven die de user interface (UI) veranderen en die de applicatie aanpassen. Elke optie heeft een korte en één of meer lange vormen; ze doen precies hetzelfde. Dit zijn de opties:\

| Optie | Gebruik |
|----|----|
| -h, --help | Toont de lijst met opties en stopt. Op Windows doet -? hetzelfde. |
| --help-all | Zoals --help, maar toont ook de opties van Qt zelf. |
| -v, --version | Toont de versie van Basic-256 en stopt. |
| -l, --lang, --language *taal optie* | Verander de taal van de Basic-256 applicatie. Talen die vandaag zijn voorzien: “de”, “en”, “es”, “fr”, “it”, “nl”, “pt” en “ru”. Een taalcode met een regio erbij, zoals “nl_BE”, valt terug op de taal zelf. Zonder deze optie wordt de taal van het systeem gebruikt. |
| -r, --run | Laad een voer het programma uit dat meegeven wordt, met de code zichtbaar zodat je het opnieuw kan starten. |
| -a, --app, --application | Laadt en voert het programma uit als een applicatie; Basic-256 sluit zodra het programma klaar is. |
| -g, --graph | Laadt en voert het programma uit met enkel het grafische venster. |
| -t, --text | Laadt en voert het programma uit met enkel het tekstvenster. |
| -f, --full | Samen met -r, -a, -g of -t: het venster wordt zo groot als het scherm. Alleen gebruikt doet deze optie niets. |
| -s, --silent | Voert het programma uit zonder enig venster. Wat PRINT schrijft gaat naar de standaard uitvoer, fouten gaan naar de standaard foutuitvoer, en de afsluitcode van het proces zegt of het programma gelukt is. Vereist een bestandsnaam en kan niet samen met -r, -a, -g of -t. |

Je kan voor Basic-256 ook een programma meegeven in de command line, maar deze moet eindigen met <u>*.kbs*</u>. Het programma wordt dan in het editeer venster geladen en wordt met de *-r* opdracht ook onmiddellijk gestart.

De opties -a, -g en -t zijn de opties om een programma als een applicatie te starten, zonder de code te tonen. Let op: de opdrachten [GraphVisible](./graphvisible.md), [EditVisible](./editvisible.md) en [OutputVisible](./outputvisible.md) in een programma worden uitgevoerd terwijl het loopt, en kunnen dus een venster terugzetten dat de optie net verborgen had.

Zonder een bestandsnaam om uit te voeren worden -r, -a, -g en -t genegeerd en opent gewoon de IDE. De optie -s is strenger: die meldt het probleem op de standaard foutuitvoer en stopt met afsluitcode 1, wat ook gebeurt als het bestand niet geladen kan worden of als het programma met een fout eindigt. Een programma dat tot het einde loopt geeft afsluitcode 0.

Op Windows is Basic-256 een venstertoepassing en geen consoletoepassing. Wat --help en --version tonen, en de meldingen en PRINT-uitvoer van -s, worden geschreven naar de console van waaruit het programma gestart werd; gestart vanuit de Verkenner of met een snelkoppeling is er geen console en kan die tekst nergens heen.

### Voorbeeld

    basic256 -r hallo.kbs

    basic256 -g -f Mandelbrot-256.kbs

    basic256 -s makeindex.kbs > index.txt

voert een programma uit in de IDE, vult daarna het scherm met enkel de grafiek
van een programma, en voert ten slotte een programma uit zonder vensters waarbij
alles wat het schrijft in een bestand terechtkomt.

### Zie ook

[EditVisible](./editvisible.md), [GraphVisible](./graphvisible.md), [OutputVisible](./outputvisible.md)

### Nieuw vanaf

0.9.6.67 — de optie -a kwam erbij in 1.99.99.55, en de opties -g, -t, -f en -s in 2.1.

------------------------------------------------------------------------

[vorige](./editvisible.md) \| [Speciale Opdrachten](./miscellaneous.md) \| [volgende](./getsetting.md)
