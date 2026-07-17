---
title: "Getsetting"
sidebar_label: "Getsetting"
---

## GetSetting

### Formaat

**getsetting** ( *programma_naam*, *sleutel* )

### Beschrijving

De functie haalt een parameter uit het systeem register (of alternatieve bewaarplaats). De *programma_naam* en de *sleutel* moeten meegegeven worden om een eerder opgeslagen parameter terug te halen.\
Er wordt een lege string “” teruggegeven als de parameter nog niet geïnitialiseerd werd.

Een opgeslagen parameter moet beschikbaar zijn voor andere basic-256 programmas en blijft beschikbaar voor een langere periode.

Deze functie kan standaard af staan omdat er potentieel gevaar is voor de veilgiehdi van het systeem. Deze keuze kan worden aangepast door in de basic-256 naar Edite\>Preferences te gaan.

### Zie Ook

[SetSetting](./setsettings.md)

### Voorbeeld

``` basic4gl
setsetting "ditprogramma", "deze_sleutel", "een waarde"
print getsetting("ditprogramma", "deze_sleutel")
```

toont dan

    een waarde

### Nieuw vanaf

0.9.6.38

------------------------------------------------------------------------

[vorige](./commandline.md) \| [Speciale Opdrachten](./miscellaneous.md) \| [volgende](./setsettings.md)
