---
title: "Wavstate"
sidebar_label: "Wavstate"
---

## WAVstate (Function)

**Obsolete.** The WAV statements are obsolete. Running one prints a warning — `WAVPLAY suite is obsolete. Use SOUND/SOUNDPLAY/SOUNDPLAYER instead`. Use [SoundState](./soundstate.md) instead.

### Format

**wavstate**\
**wavstate** ( )

returns [integer_expression](./integerexpressions.md)

### Description

Returns the playback status if the current autio file loaded by [WAVplay](./wavplay.md).

|       |             |
|-------|-------------|
| State | Description |
| 0     | Stopped     |
| 1     | Playing     |
| 2     | Paused      |

### See Also

[Say](./say.md), [Sound](./sound.md), [Volume](./volume.md), [SoundLength](./soundlength.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md), [SoundWait](./soundwait.md)

### History

|         |                 |
|---------|-----------------|
| 1.1.1.3 | New to version. |
