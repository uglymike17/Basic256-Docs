---
title: "SoundSampleRate"
sidebar_label: "SoundSampleRate"
---

## SoundSampleRate (Function)

### Format

**soundsamplerate**

returns [integer_expression](./integerexpressions.md)

### Description

Returns the sample rate, in samples per second (Hz), used by the sound system to generate and play audio. This is the rate at which the raw sample values passed to [SoundLoadRaw](./soundloadraw.md) and custom waveforms in [SoundWaveform](./soundwaveform.md) are played back — one array element per sample at this rate.

### Example

    rem build one second of a 440 Hz sine wave as raw samples
    sr = soundsamplerate
    dim wave(sr)
    for i = 0 to sr - 1
        wave[i] = sin(2 * pi * 440 * i / sr)
    next i
    tone$ = soundloadraw(wave[])
    sound tone$

### See Also

[Sound](./sound.md), [SoundLoadRaw](./soundloadraw.md), [SoundWaveform](./soundwaveform.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
