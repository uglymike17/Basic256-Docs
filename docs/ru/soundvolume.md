---
title: "SoundVolume"
sidebar_label: "SoundVolume"
---

## SoundVolume (Statement)

### Format

**soundvolume** *player#*, *volume*\
**soundvolume** *resource*, *volume*

### Description

Sets the volume of an individual sound, without affecting other sounds or the master [Volume](../en/volume.md). *volume* ranges from 0 (silent) to 10 (full volume); values outside that range are clamped.

- **soundvolume** *player#*, *volume* — sets the volume of a specific sound instance, where *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md).
- **soundvolume** *resource*, *volume* — sets the default volume for a resource loaded with [SoundLoad](../en/soundload.md); every future play of that resource starts at this volume. If no resource with that handle is loaded, ERROR_SOUNDRESOURCE is thrown.

### Example

    quiet$ = soundload("bounce.mp3")
    soundvolume quiet$, 3      # future plays of this resource are quiet
    soundplay quiet$

    music = soundplayer("song.mp3")
    soundplay music
    soundvolume music, 8       # just this instance

### See Also

[Sound](../en/sound.md), [SoundLoad](../en/soundload.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [Volume](../en/volume.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
