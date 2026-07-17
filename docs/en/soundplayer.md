---
title: "SoundPlayer"
sidebar_label: "SoundPlayer"
---

## SoundPlayer (Function)

### Format

**soundplayer** ( *filename* )\
**soundplayer** ( *url* )\
**soundplayer** ( *resource* )\
**soundplayer** ( [array\[](./arrays.md)\] )

returns [integer_expression](./integerexpressions.md)

### Description

Builds a sound instance **without starting it** and returns its *player#*. This is the id you need whenever you want to address a specific sound later — [SoundPlay](./soundplay.md), [SoundLength](./soundlength.md), [SoundSeek](./soundseek.md), [SoundPause](./soundpause.md) and friends all take this integer id.

Unlike [SoundPlay](./soundplay.md) with a string argument (which creates a fresh instance on every call), a player is a single reusable instance: starting, pausing, and stopping it always addresses the same sound.

### Example

    music = soundplayer("song.mp3")
    soundplay music         # start it
    pause 2.0
    soundpause music        # pause it
    pause 1.0
    soundplay music         # resume from where it paused
    soundwait music         # wait for the end

### See Also

[Sound](./sound.md), [SoundLength](./soundlength.md), [SoundLoad](./soundload.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md), [SoundVolume](./soundvolume.md), [SoundWait](./soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
