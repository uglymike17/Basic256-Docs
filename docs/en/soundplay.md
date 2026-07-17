---
title: "SoundPlay"
sidebar_label: "SoundPlay"
---

## SoundPlay (Statement)

### Format

**soundplay** *filename*\
**soundplay** *url*\
**soundplay** *resource*\
**soundplay** *player#*\
**soundplay** [array\[](./arrays.md)\]\
**soundplay** [{ frequency1, duration1, frequency2, duration2, ... }](./lists.md)

### Description

Creates a sound instance, starts it, and returns immediately without waiting for playback to finish. It accepts four different argument types:

1. a *resource* string from [SoundLoad](./soundload.md) — plays from the in-memory bytes
2. a plain *filename* or *url* — the media is read directly from disk or the network
3. a *player#* from [SoundPlayer](./soundplayer.md) — starts (or resumes, if paused) that existing instance
4. an array or list of frequency/duration pairs — plays generated tones (see [Sound](./sound.md))

[Sound](./sound.md) is the blocking twin of **soundplay** — same arguments, but it waits for playback to finish before the next line runs.

**Note:** each **soundplay** with a string argument creates a *new* sound instance with a new id. Fire it in a loop and instances will stack up — up to 100, after which ERROR_TOOMANYSOUNDS is thrown. Playing via a [SoundPlayer](./soundplayer.md) *player#* reuses the one instance instead.

### Example

    res$ = soundload("bounce.mp3")
    soundplay res$          # returns immediately
    print "playing..."
    soundwait               # block until it finishes

### See Also

[Sound](./sound.md), [SoundLength](./soundlength.md), [SoundLoad](./soundload.md), [SoundPause](./soundpause.md), [SoundPlayer](./soundplayer.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md), [SoundVolume](./soundvolume.md), [SoundWait](./soundwait.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
