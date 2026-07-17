---
title: "SoundPosition"
sidebar_label: "SoundPosition"
---

## SoundPosition (Function)

### Format

**soundposition** ( *player#* )

returns [float_expression](./floatexpressions.md)

### Description

Returns the current playback position, in seconds, of a sound instance. *player#* is the integer id returned by [SoundPlayer](./soundplayer.md).

### Example

    music = soundplayer("song.mp3")
    soundplay music
    pause 2.0
    print "we are " + soundposition(music) + " seconds in"

### See Also

[Sound](./sound.md), [SoundLength](./soundlength.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
