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

- *player#* is the integer id returned by [SoundPlayer](./soundplayer.md).
- *resource* is a handle from [SoundLoad](./soundload.md); the fade is scheduled and applied the next time that resource is played.
- *volume* is the target level, 0 (silent) to 10 (full); values outside that range are clamped.

If both *seconds* and *delay* are shorter than about 25 ms the change is applied immediately, exactly like [SoundVolume](./soundvolume.md). When the three-argument form is used, the fade starts with no delay.

### Example

    music = soundplayer("song.mp3")
    soundvolume music, 0
    soundplay music
    soundfade music, 10, 3.0        # fade up to full over 3 seconds
    # ... later ...
    soundfade music, 0, 2.0, 5.0    # after 5s, fade out over 2s

### See Also

[Sound](./sound.md), [SoundLoad](./soundload.md), [SoundLoop](./soundloop.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundVolume](./soundvolume.md), [Volume](./volume.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
