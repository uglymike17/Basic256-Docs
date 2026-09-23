---
title: "Say"
sidebar_label: "Say"
---

## Say (Statement)

### Format

**say** *expression*\
**say** ( *expression* )

### Description

Speaks *expression* aloud using the operating system's text-to-speech (TTS) engine. On Windows the current default SAPI voice is used; on Linux a speech library such as eSpeak or Flite must be installed. A numeric *expression* is spoken as words (for example `3 + 7` is spoken as "ten"). The statement waits until the phrase has finished being spoken before the program continues.

### Example

    say "Hello, world."
    say 3 + 7            # speaks "ten"

### See Also

[Say](../en/say.md), [Sound](../en/sound.md), [Volume](../en/volume.md), [SoundLength](../en/soundlength.md), [SoundPause](../en/soundpause.md), [SoundPlay](../en/soundplay.md), [SoundPosition](../en/soundposition.md), [SoundSeek](../en/soundseek.md), [SoundState](../en/soundstate.md), [SoundStop](../en/soundstop.md), [SoundWait](../en/soundwait.md)

### History

|        |                |
|--------|----------------|
| 0.9.4  | New To Version |
