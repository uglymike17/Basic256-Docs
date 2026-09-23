---
title: "SoundStop"
sidebar_label: "SoundStop"
---

## SoundStop (Statement)

### Format

**soundstop** *player#*

### Description

Stops playback of a sound instance, where *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md). Unlike [SoundPause](../en/soundpause.md), the playback position is not kept — playing the instance again starts from the beginning.

### Example

    music = soundplayer("song.mp3")
    soundplay music
    pause 2.0
    soundstop music
    soundplay music      # starts over from the beginning

### See Also

[Sound](../en/sound.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundSeek](../en/soundseek.md), [SoundState](../en/soundstate.md), [SoundWait](../en/soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
