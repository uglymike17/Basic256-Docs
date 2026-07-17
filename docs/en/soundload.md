---
title: "SoundLoad"
sidebar_label: "SoundLoad"
---

## SoundLoad (Function)

### Format

**soundload** ( *filename* )\
**soundload** ( *url* )\
**soundload** ( *frequency*, *duration* )\
**soundload** ( [array\[](./arrays.md)\] )

returns [string_expression](./stringexpressions.md)

### Description

Creates a reusable sound resource ahead of time, without playing it. The file is read fully into memory (or the URL is downloaded) **once**, the bytes are stored under a handle, and that handle is returned as a string. Nothing is played and no player instance is created.

The returned resource string can be passed to [Sound](./sound.md), [SoundPlay](./soundplay.md), or [SoundPlayer](./soundplayer.md) so the same sound does not have to be re-read or re-fetched each time. This is the right tool for a sound effect fired repeatedly in a game loop, or for a URL you don't want to download again. The cost is that the bytes stay resident in memory.

- **soundload(** *filename* **)** — loads from a local file path.
- **soundload(** *url* **)** — loads from an http, https, or ftp URL.
- **soundload(** *frequency*, *duration* **)** — generates a tone resource (frequency in Hz, duration in milliseconds). An array of frequency/duration pairs is likewise accepted.

If the file cannot be found or fetched, an empty string is returned and ERROR_SOUNDFILE is thrown.

### Example

    boing$ = soundload("bounce.mp3")
    for n = 1 to 3
        soundplay boing$    # plays straight from RAM each time
        pause 1.0
    next n

### See Also

[Sound](./sound.md), [SoundLength](./soundlength.md), [SoundPlay](./soundplay.md), [SoundPlayer](./soundplayer.md), [SoundVolume](./soundvolume.md), [SoundWait](./soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
