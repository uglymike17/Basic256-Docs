---
title: "SoundSeek"
sidebar_label: "SoundSeek"
---

## SoundSeek (Statement)

### Format

**soundseek** *player#*, *position*

### Description

Moves the playback position of a sound instance to *position* seconds from the start. *player#* is the integer id returned by [SoundPlayer](./soundplayer.md); *position* is a [numeric_expression](./numericexpressions.md) in seconds (fractions allowed).

For some media the sound may not be seekable at the very moment playback starts; in that case the interpreter waits briefly (up to two seconds) for it to become seekable.

### Example

    music = soundplayer("song.mp3")
    soundplay music
    soundseek music, 30.0    # jump 30 seconds in
    print soundposition(music)

### See Also

[Sound](./sound.md), [SoundLength](./soundlength.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundPosition](./soundposition.md), [SoundStop](./soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
