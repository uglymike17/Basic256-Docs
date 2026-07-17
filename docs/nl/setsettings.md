---
title: "Setsettings"
sidebar_label: "Setsettings"
---

## SetSetting

### Formaat

**setsetting** *programma_naam*, *sleutel*, *waarde*\
**setsetting** ( *programma_naam*, *sleutel*, *waarde* )

### Beschrijving

De functie schrijft de *waarde* weg in het systeemregister ( of analoge opslag). De *programma_naam* en de *sleutel* worden gebruikt om de informatie te categoriseren en om zeker te zijn dat de parameters niet per ongeluk door een ander programma worden overschreven.

De bewaarde informatie wordt dan beschikbaar voor andere basic-256 programma’s en blijft voor een langere periode beschikbaar.

Deze functie staat standaard af en kan in het basic-256 programma aangezet worden door een aanpassingen in Edit\>Preferences.

### Zie ook

[GetSetting](./getsetting.md)

### Voorbeeld

``` basic4gl
setsetting "ditprogramma", "eensleutel", "de waarde"
print getsetting("ditprogramma", "eensleutel")
```

toont dan

    de waarde

### Nieuw vanaf

0.9.6.38

------------------------------------------------------------------------

[vorige](./getsetting.md) \| [Speciale Opdrachten](./miscellaneous.md) \| [volgende](./portin.md)
