---
title: "Freedbset"
sidebar_label: "Freedbset"
---

## FreeDBSet

### Format

**freedbset** ( *database_number* )

### Description

Il est possible avec BASIC256 d’ouvrir simultanément plusieurs résultats de requêtes de bases de données. La fonction **freedbset** retourne un numéro de résultat requête de base de donnée disponible pour l’utilisation de [DBOpenSet](./dbopenset.md). Lorsqu’un résultat de requête de base de données est fermée, **freedbset** remet ce numéro dans la liste de ceux qu’il peut donner pour une prochaine ouverture.

### Voir Aussi

*(See [fr:start](./start.md).)*&noheader)

### Disponible depuis la version

0.9.9.17
