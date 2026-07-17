---
title: "SoundState"
sidebar_label: "SoundState"
---

## SoundState (Function)

### Format

**soundstate** ( *player#* )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the playback state of a sound instance. *player#* is the integer id returned by [SoundPlayer](./soundplayer.md).

| Value | Meaning |
|-------|-------------------------------|
| 0 | stopped (or finished playing) |
| 1 | playing |
| 2 | paused |

### Example

    music = soundplayer("song.mp3")
    soundplay music
    while soundstate(music) = 1
        pause 0.1
    endwhile
    print "playback ended"

### See Also

[Sound](./sound.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundPosition](./soundposition.md), [SoundStop](./soundstop.md), [SoundWait](./soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
