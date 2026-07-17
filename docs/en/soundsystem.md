---
title: "SoundSystem"
sidebar_label: "SoundSystem"
---

## SoundSystem (Statement)

### Format

**soundsystem** *code*

### Description

Sends a command that affects **all** sounds and players at once. *code* is an integer:

| Code | Action |
|------|-------------------------------------------------------------|
| 0 | Stop all playing sounds |
| 1 | Play / resume all sounds paused with code 2 |
| 2 | Pause all playing sounds |
| 3 | Stop and delete all sounds and players |
| 4 | Play / resume all paused sounds |

Code 3 is the most thorough — it releases every sound instance and player, freeing their memory.

### Example

    soundsystem 2      # pause everything
    pause 1.0
    soundsystem 1      # resume everything
    # ... on shutdown ...
    soundsystem 3      # stop and free all sounds

### See Also

[Sound](./sound.md), [SoundPause](./soundpause.md), [SoundPlay](./soundplay.md), [SoundPlayerOff](./soundplayeroff.md), [SoundStop](./soundstop.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
