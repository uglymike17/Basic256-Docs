---
title: "SoundWait"
sidebar_label: "SoundWait"
---

## SoundWait (Statement)

### Format

**soundwait**\
**soundwait** *player#*

### Description

Blocks the program until the sound has finished playing, while keeping the application (and the sound system's event loop) alive — so you will hear the sound through to the end.

- **soundwait** with no argument waits for the most recently played sound.
- **soundwait** *player#* waits for a specific sound instance, where *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md).

A backend-independent fallback is `pause soundlength`, which parks the program for the clip's length while the background player renders.

### Example

    soundplay "song.mp3"
    print "waiting for the song to finish..."
    soundwait
    print "done."

### See Also

[Pause](../en/pause.md), [Sound](../en/sound.md), [SoundLength](../en/soundlength.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundState](../en/soundstate.md), [SoundStop](../en/soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
