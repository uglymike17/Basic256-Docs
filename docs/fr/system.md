---
title: "System"
sidebar_label: "System"
---

## System

### Format

**system** *expression*\
**system** ( *expression* )

### Description

Exécute une commande ou un autre programme et attend qu’il soit terminé. Aucune fenêtre de terminal ne s’ouvre et ce que la commande affiche est perdu. Les commandes internes de l’invite de commande Windows (dir, copy, del) doivent être précédées de cmd /c : system "cmd /c dir > fichiers.txt". L’instruction est désactivée par défaut ; voir Préférences/Avancé/« Allow SYSTEM statement ». **ATTENTION:** Cela peut être une instruction très dangereuse, à n’utiliser que si vous savez exactement ce que vous faites.

### Disponible depuis la version

0.9.5h
