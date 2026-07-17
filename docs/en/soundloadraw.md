---
title: "SoundLoadRaw"
sidebar_label: "SoundLoadRaw"
---

## SoundLoadRaw (Function)

### Format

**soundloadraw** ( [array\[](./arrays.md)\] )

returns [string_expression](./stringexpressions.md)

### Description

Builds a sound resource directly from raw audio samples and returns its resource handle (a string), which can then be passed to [Sound](./sound.md), [SoundPlay](./soundplay.md), or [SoundPlayer](./soundplayer.md).

The argument is a one-dimensional array of sample amplitudes. Each value should be between **-1.0 and 1.0** (values outside that range are clamped). The samples are played back at the rate reported by [SoundSampleRate](./soundsamplerate.md) — so *N* samples produce *N* / soundsamplerate seconds of audio.

This is the lowest-level way to make a sound: you supply the exact waveform, sample by sample. For shaping generated *tones* instead, see [SoundWaveform](./soundwaveform.md), [SoundEnvelope](./soundenvelope.md), and [SoundHarmonics](./soundharmonics.md).

### Example

    rem a half-second 440 Hz sine tone
    sr = soundsamplerate
    n = sr / 2
    dim wave(n)
    for i = 0 to n - 1
        wave[i] = 0.8 * sin(2 * pi * 440 * i / sr)
    next i
    tone$ = soundloadraw(wave[])
    sound tone$

### See Also

[Sound](./sound.md), [SoundLoad](./soundload.md), [SoundPlay](./soundplay.md), [SoundSampleRate](./soundsamplerate.md), [SoundWaveform](./soundwaveform.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
