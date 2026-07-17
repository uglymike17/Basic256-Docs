---
title: "SoundLength"
sidebar_label: "SoundLength"
---

## SoundLength (Function)

### Format

**soundlength**\
**soundlength** ( *player#* )

returns [float_expression](./floatexpressions.md)

### Description

Returns the length (duration) in seconds of a sound.

- **soundlength** with no argument returns the length of the most recently played sound.
- **soundlength(** *player#* **)** returns the length of a specific sound instance, where *player#* is the integer id returned by [SoundPlayer](./soundplayer.md).

For some media the duration may not be available the instant playback begins; in that case the interpreter waits briefly (up to two seconds) for the media to report it.

### Example

    soundplay "song.mp3"
    print "this song is " + soundlength + " seconds long"

### See Also

[Sound](./sound.md), [SoundLoad](./soundload.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundWait](./soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
