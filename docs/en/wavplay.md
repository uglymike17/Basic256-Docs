---
title: "Wavplay"
sidebar_label: "Wavplay"
---

## WAVplay (Statement)

:::warning Obsolete
The WAV statements are obsolete. Running one prints a warning — `WAVPLAY suite is obsolete. Use SOUND/SOUNDPLAY/SOUNDPLAYER instead`. Use [SoundPlay](./soundplay.md) instead — see also [Sound](./sound.md) and [SoundPlayer](./soundplayer.md).
:::

### Format

**wavplay** [file_name](./stringexpressions.md)\
**wavplay** ( [file_name](./stringexpressions.md) )
**wavplay**

### Description

Play audio file asynchronously (in the background) or restart a previously stopped or paused audio file.

### Note

As of 1.1.1.3 support for several additional types of autio files have been added (including mp3).

### See Also

[Say](./say.md), [Sound](./sound.md), [Volume](./volume.md), [SoundLength](./soundlength.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md), [SoundWait](./soundwait.md)

### History

|         |                                        |
|---------|----------------------------------------|
| 0.9.4   | New To Version                         |
| 1.1.1.3 | Rewrote to allow for more media types. |
