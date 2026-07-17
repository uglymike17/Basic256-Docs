---
title: "SoundPlayerOff"
sidebar_label: "SoundPlayerOff"
---

## SoundPlayerOff (Statement)

### Format

**soundplayeroff** *player#*\
**soundplayeroff**

### Description

Turns a player created with [SoundPlayer](./soundplayer.md) back into an ordinary sound: it is stopped and then released so it is cleaned up automatically like any finished sound, instead of being kept alive for later reuse. *player#* is the integer id returned by [SoundPlayer](./soundplayer.md); with no argument the most recently played sound is used.

Use this to free a player you no longer need without shutting down the whole sound system (compare [SoundSystem](./soundsystem.md) code 3, which releases everything).

### Example

    music = soundplayer("song.mp3")
    soundplay music
    pause 2.0
    soundplayeroff music     # stop and release this player

### See Also

[Sound](./sound.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundStop](./soundstop.md), [SoundSystem](./soundsystem.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
