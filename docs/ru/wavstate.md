---
title: "Wavstate"
sidebar_label: "Wavstate"
---

## WAVstate (Function)

**Obsolete.** The WAV statements are obsolete. Running one prints a warning — `WAVPLAY suite is obsolete. Use SOUND/SOUNDPLAY/SOUNDPLAYER instead`. Use [SoundState](../en/soundstate.md) instead.

### Format

**wavstate**\
**wavstate** ( )

returns [integer_expression](../en/integerexpressions.md)

### Description

Returns the playback status if the current autio file loaded by [WAVplay](../en/wavplay.md).

|       |             |
|-------|-------------|
| State | Description |
| 0     | Stopped     |
| 1     | Playing     |
| 2     | Paused      |

### See Also

[Say](../en/say.md), [Sound](../en/sound.md), [Volume](../en/volume.md), [SoundLength](../en/soundlength.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPosition](../en/soundposition.md), [SoundSeek](../en/soundseek.md), [SoundState](../en/soundstate.md), [SoundStop](../en/soundstop.md), [SoundWait](../en/soundwait.md)

### History

|         |                 |
|---------|-----------------|
| 1.1.1.3 | New to version. |
