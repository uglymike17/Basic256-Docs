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

[Say](./say.md), [Sound](./sound.md), [Volume](./volume.md), [SoundLength](./soundlength.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPosition](./soundposition.md), [SoundSeek](./soundseek.md), [SoundState](./soundstate.md), [SoundStop](./soundstop.md), [SoundWait](./soundwait.md)

### History

|        |                |
|--------|----------------|
| 0.9.4  | New To Version |
