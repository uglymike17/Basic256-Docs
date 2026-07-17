---
title: "SoundID"
sidebar_label: "SoundID"
---

## SoundID (Function)

### Format

**soundid**

returns [integer_expression](./integerexpressions.md)

### Description

Returns the id of the most recently played sound. This is the same id [SoundPlayer](./soundplayer.md) returns, but it lets you capture the id of a sound started with the simpler [SoundPlay](./soundplay.md) statement, so you can address it afterwards with [SoundStop](./soundstop.md), [SoundLength](./soundlength.md), and the other functions that take a *player#*.

### Example

    soundplay "song.mp3"
    music = soundid          # capture the id of what just started
    pause 2.0
    print soundposition(music)
    soundstop music

### See Also

[Sound](./sound.md), [SoundLength](./soundlength.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundPosition](./soundposition.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
