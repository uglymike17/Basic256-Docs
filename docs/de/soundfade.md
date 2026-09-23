---
title: "SoundFade"
sidebar_label: "SoundFade"
---

## SoundFade (Statement)

### Format

**soundfade** *player#*, *volume*, *seconds*\
**soundfade** *player#*, *volume*, *seconds*, *delay*\
**soundfade** *resource*, *volume*, *seconds*, *delay*

### Description

Gradually changes the volume of a sound to a new target *volume* over *seconds*, optionally waiting *delay* seconds before the fade begins. Both *seconds* and *delay* are in seconds and may be fractional.

- *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md).
- *resource* is a handle from [SoundLoad](../en/soundload.md); the fade is scheduled and applied the next time that resource is played.
- *volume* is the target level, 0 (silent) to 10 (full); values outside that range are clamped.

If both *seconds* and *delay* are shorter than about 25 ms the change is applied immediately, exactly like [SoundVolume](../en/soundvolume.md). When the three-argument form is used, the fade starts with no delay.

### Example

    music = soundplayer("song.mp3")
    soundvolume music, 0
    soundplay music
    soundfade music, 10, 3.0        # fade up to full over 3 seconds
    # ... later ...
    soundfade music, 0, 2.0, 5.0    # after 5s, fade out over 2s

### See Also

[Sound](../en/sound.md), [SoundLoad](../en/soundload.md), [SoundLoop](../en/soundloop.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundVolume](../en/soundvolume.md), [Volume](../en/volume.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
