---
title: "SoundHarmonics"
sidebar_label: "SoundHarmonics"
---

## SoundHarmonics (Statement)

### Format

**soundharmonics** *harmonic*, *amplitude*\
**soundharmonics** [array\[](./arrays.md)\]\
**soundharmonics**

### Description

Adds overtones to generated tones by mixing in whole-number multiples of the fundamental frequency, giving a richer timbre. It affects tones generated *after* it is called.

- *harmonic* is an integer of 1 or more: 1 is the fundamental (the note itself), 2 is one octave up, 3 is an octave and a fifth, and so on.
- *amplitude* is that harmonic's relative strength, 0.0 to 1.0.

The fundamental (harmonic 1) always exists — it may be set to any amplitude, including 0.0. Setting any *other* harmonic to amplitude 0.0 removes it.

**Array form** — set several at once as *harmonic, amplitude* pairs: `h1, a1, h2, a2, ...` (a single row, or a two-column array).

**No arguments** — clears all added harmonics, restoring the plain fundamental.

### Example

    soundharmonics 2, 0.5       # add the octave at half strength
    soundharmonics 3, 0.25      # add the fifth above that
    sound 220, 1000
    soundharmonics              # back to a pure tone

    rem the same, set together
    soundharmonics {2, 0.5, 3, 0.25}
    sound 220, 1000

### See Also

[Sound](./sound.md), [SoundEnvelope](./soundenvelope.md), [SoundWaveform](./soundwaveform.md)

### Availability

BASIC-256 2.0 and later. Documented from the [BASIC-256 v2.1 continuation project](https://github.com/uglymike17/basic256).
