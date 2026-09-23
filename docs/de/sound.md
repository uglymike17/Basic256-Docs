---
title: "Sound"
sidebar_label: "Sound"
---

## Sound (Statement)

### Format

**sound** *frequency*, *duration*\
**sound** ( *frequency*, *duration* )\
**sound** [array\[](../en/arrays.md)\]\
**sound** ( [array\[](../en/arrays.md)\] )\
**sound** [{ frequency1, duration1, frequency2, duration2, ... }](../en/lists.md)\
**sound** *filename*\
**sound** *url*\
**sound** *resource*\
**sound** *player#*

#### Polyphonic Sounds

**sound** [array\[,](../en/arrays.md)\]\
**sound** ( [array\[,](../en/arrays.md)\] )\
**sound** [{ { frequency1, duration1 }, { frequency2, duration2 }, ... }](../en/lists.md)

### Description

Play a sound from the computer’s speakers.Frequency is expressed in Hz and duration is expressed in milliseconds (1000 in a second). An array or list containing frequency and duration may also be passed. This eliminates any clicking between sounds when more than one is being output sequentially.

One dimensional arrays and lists must have an even number of values. A two dimensional array may have any number of rows but must have two columns.

A media *filename* or *url*, a *resource* string from [SoundLoad](../en/soundload.md), or a *player#* from [SoundPlayer](../en/soundplayer.md) may also be passed. **Sound** is the blocking twin of [SoundPlay](../en/soundplay.md) — same arguments, but it waits for playback to finish before the next line runs.

### See Also

[Say](../en/say.md), [SoundLength](../en/soundlength.md), [SoundLoad](../en/soundload.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPlayer](../en/soundplayer.md), [SoundPosition](../en/soundposition.md), [SoundSeek](../en/soundseek.md), [SoundState](../en/soundstate.md), [SoundStop](../en/soundstop.md), [SoundVolume](../en/soundvolume.md), [SoundWait](../en/soundwait.md), [Volume](../en/volume.md)

### History

|  |  |
|----|----|
| 0.9.5g | Sound support for LINUX systems was added |
| 0.9.5h | Windows sound was changed to use the default sound device |
| 1.99.99.55 | two dimensional list support was added |
| 1.99.99.72 | polyphonic sounds were added and the \[\] on array variables is now required |
