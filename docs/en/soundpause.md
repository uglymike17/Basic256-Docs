---
title: "SoundPause"
sidebar_label: "SoundPause"
---

## SoundPause (Statement)

### Format

**soundpause** *player#*

### Description

Pauses playback of a sound instance, where *player#* is the integer id returned by [SoundPlayer](./soundplayer.md). The playback position is kept; resume from the same spot with **soundplay** *player#*.

There is no separate "resume" statement — [SoundPlay](./soundplay.md) with a *player#* starts a stopped player or resumes a paused one.

### Example

    music = soundplayer("song.mp3")
    soundplay music
    pause 2.0
    soundpause music     # freeze playback
    pause 1.0
    soundplay music      # resume where it left off

### See Also

[Sound](./sound.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
