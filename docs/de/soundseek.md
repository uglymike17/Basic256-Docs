---
title: "SoundSeek"
sidebar_label: "SoundSeek"
---

## SoundSeek (Statement)

### Format

**soundseek** *player#*, *position*

### Description

Moves the playback position of a sound instance to *position* seconds from the start. *player#* is the integer id returned by [SoundPlayer](../en/soundplayer.md); *position* is a [numeric_expression](../en/numericexpressions.md) in seconds (fractions allowed).

For some media the sound may not be seekable at the very moment playback starts; in that case the interpreter waits briefly (up to two seconds) for it to become seekable.

### Example

    music = soundplayer("song.mp3")
    soundplay music
    soundseek music, 30.0    # jump 30 seconds in
    print soundposition(music)

### See Also

[Sound](../en/sound.md), [SoundLength](../en/soundlength.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundPosition](../en/soundposition.md), [SoundStop](../en/soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
