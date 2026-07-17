---
title: "SoundWaveform"
sidebar_label: "SoundWaveform"
---

## SoundWaveform (Statement)

### Format

**soundwaveform** *number*\
**soundwaveform** [array\[](./arrays.md)\]\
**soundwaveform** [array\[](./arrays.md)\], *logic*

### Description

Chooses the shape of the wave used to generate tones by [Sound](./sound.md), [SoundPlay](./soundplay.md), and [SoundLoad](./soundload.md). It affects tones generated *after* it is called; it has no effect on media files or raw sounds.

**Built-in waveforms** — pass a *number*:

| Number | Waveform |
|--------|----------|
| 0 | Sine (the default) |
| 1 | Square |
| 2 | Triangle |
| 3 | Sawtooth |
| 4 | Pulse |

**Custom waveform** — pass a one-dimensional array describing one full cycle of the wave. There are two interpretations, selected by the optional *logic* flag (default false / off):

- *logic* off — the array is a list of raw amplitude values (each -1.0 to 1.0) sampled evenly across one cycle. Passing exactly [SoundSampleRate](./soundsamplerate.md) values defines the cycle sample-for-sample.
- *logic* on — the array is a list of *amplitude, length* breakpoints (`a1, len1, a2, len2, ...`); the wave is drawn by interpolating straight lines between the amplitudes, with each segment given its relative length.

### Example

    soundwaveform 1        # square wave
    sound 440, 500

    rem custom triangle from breakpoints (logic form)
    soundwaveform {-1, 1, 1, 1, -1, 0}, true
    sound 440, 500

    soundwaveform 0        # back to the default sine

### See Also

[Sound](./sound.md), [SoundEnvelope](./soundenvelope.md), [SoundHarmonics](./soundharmonics.md), [SoundLoadRaw](./soundloadraw.md), [SoundSampleRate](./soundsamplerate.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
