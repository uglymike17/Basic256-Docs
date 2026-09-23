---
title: "SoundLoop"
sidebar_label: "SoundLoop"
---

## SoundLoop (Statement)

### Format

**soundloop** *player#*, *count*\
**soundloop** *resource*, *count*\
**soundloop** *count*

### Description

Sets how many times a sound will repeat.

- **soundloop** *player#*, *count* — sets the repeat count for a sound instance, where *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md).
- **soundloop** *resource*, *count* — sets the default repeat count for a resource loaded with [SoundLoad](../en/soundload.md); every future play of that resource uses this count.
- **soundloop** *count* — applies to the most recently played sound.

A *count* of 1 plays the sound once (the default). A count of 2 plays it twice, and so on. A count of **0 repeats the sound indefinitely** until it is stopped with [SoundStop](../en/soundstop.md).

Set the loop count before starting playback (or on a resource before it is played).

### Example

    beat = soundplayer("drum.wav")
    soundloop beat, 0        # loop forever
    soundplay beat
    pause 10.0
    soundstop beat

### See Also

[Sound](../en/sound.md), [SoundLoad](../en/soundload.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundStop](../en/soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
