---
title: "SoundEnvelope"
sidebar_label: "SoundEnvelope"
---

## SoundEnvelope (Statement)

### Format

**soundenvelope** *attack*, *decay*, *sustain*, *release*\
**soundenvelope** [array\[](./arrays.md)\]\
**soundenvelope**

### Description

Shapes the volume of generated tones over their duration, instead of playing them at a flat level. It affects tones generated *after* it is called.

**Four-value (ADSR) form** — the classic amplitude envelope:

- *attack* — time, in milliseconds, to rise from silence to full amplitude.
- *decay* — time, in milliseconds, to fall from full amplitude to the sustain level.
- *sustain* — the held amplitude, 0.0 to 1.0.
- *release* — time, in milliseconds, to fade from the sustain level down to silence at the end.

**Array form** — a custom envelope given as alternating *level, duration* breakpoints ending with a level and then a release time: `level0, dur0, level1, dur1, ..., levelN, release`. Levels are 0.0 to 1.0 and durations are in milliseconds. The array must have an odd number of values (more than four). The amplitude moves in straight lines between successive levels.

**No arguments** — removes the envelope, so tones play at a constant amplitude again.

### Example

    soundenvelope 50, 100, 0.6, 200    # attack 50ms, decay 100ms,
                                       # sustain 0.6, release 200ms
    sound 440, 1000
    soundenvelope                      # back to flat tones

### See Also

[Sound](./sound.md), [SoundHarmonics](./soundharmonics.md), [SoundWaveform](./soundwaveform.md), [Volume](./volume.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
