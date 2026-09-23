---
title: "SoundState"
sidebar_label: "SoundState"
---

## SoundState (Function)

### Format

**soundstate** ( *player#* )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the playback state of a sound instance. *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md).

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

[Sound](../en/sound.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundPosition](../en/soundposition.md), [SoundStop](../en/soundstop.md), [SoundWait](../en/soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
