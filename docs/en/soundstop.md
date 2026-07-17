---
title: "SoundStop"
sidebar_label: "SoundStop"
---

## SoundStop (Statement)

### Format

**soundstop** *player#*

### Description

Stops playback of a sound instance, where *player#* is the integer id returned by [SoundPlayer](./soundplayer.md). Unlike [SoundPause](./soundpause.md), the playback position is not kept — playing the instance again starts from the beginning.

### Example

    music = soundplayer("song.mp3")
    soundplay music
    pause 2.0
    soundstop music
    soundplay music      # starts over from the beginning

### See Also

[Sound](./sound.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundWait](./soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
