---
title: "Freefile"
sidebar_label: "Freefile"
---

## Freefile

### Format

**freefile**\
**freefile** ( )

### Description

Avec BASIC256 il est possible d’ouvrir plusieurs fichiers en même temps (voir [open](./open.md)). La fonction **freefile** retourne un numéro encore non utilisé pour l’ouverture d’un fichier avec [Open](./open.md) ou [Openb](./open.md). Lorsque le fichier est fermé, le numéro qui était associé est libéré et pourra de nouveau être retourné par **freefile**.

### Exemple

    # copie un fichier binaire dans un autre
    k = 0
    source = freefile
    openb source,"file.pdf"
    dest = freefile
    openb dest,"file_copy.pdf"
    reset dest
    while not eof(source)
       writebyte dest, readbyte(source)
       k++
    end while
    close dest
    close source
    print k + " octets copiés."

### Voir Aussi

*(See [fr:start](./start.md).)*

### Disponible à partir de la version

0.9.9.17
