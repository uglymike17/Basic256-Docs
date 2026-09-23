---
title: "SoundPlayer"
sidebar_label: "SoundPlayer"
---

## SoundPlayer (Function)

### Format

**soundplayer** ( *filename* )\
**soundplayer** ( *url* )\
**soundplayer** ( *resource* )\
**soundplayer** ( [array\[](../en/arrays.md)\] )

returns [integer_expression](../en/integerexpressions.md)

### Description

Builds a sound instance **without starting it** and returns its *player#*. This is the id you need whenever you want to address a specific sound later — [SoundPlay](../en/soundplay.md), [SoundLength](../en/soundlength.md), [SoundSeek](../en/soundseek.md), [SoundPause](../en/soundpause.md) and friends all take this integer id.

Unlike [SoundPlay](../en/soundplay.md) with a string argument (which creates a fresh instance on every call), a player is a single reusable instance: starting, pausing, and stopping it always addresses the same sound.

### Example

    music = soundplayer("song.mp3")
    soundplay music         # start it
    pause 2.0
    soundpause music        # pause it
    pause 1.0
    soundplay music         # resume from where it paused
    soundwait music         # wait for the end

### See Also

[Sound](../en/sound.md), [SoundLength](../en/soundlength.md), [SoundLoad](../en/soundload.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPosition](../en/soundposition.md), [SoundSeek](../en/soundseek.md), [SoundState](../en/soundstate.md), [SoundStop](../en/soundstop.md), [SoundVolume](../en/soundvolume.md), [SoundWait](../en/soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
