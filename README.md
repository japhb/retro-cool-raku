# Retro Cool Raku Talk (2022-08)

## Quick Start on Linux Mint 20.3 Una

```
$ apt install make dpic pandoc imagemagick
$ make setup
$ make
```

You can now open a web browser on the newly-created `index.html` to view the
presentation.


## Detailed Setup

This directory includes all the files needed to rebuild the Retro Cool Raku
presentation slides.  You will need the following programs, though possibly
with different versions; I listed the versions packaged in the latest stable
Linux Mint release at the time of writing (20.3 Una), which is what I used to
build the presentation:

  * `dpic` 2020.03.01
  * `pandoc` 2.5
  * `imagemagick` 6.9.10

You'll also need version 3.7.0 of `reveal.js`, because that's the one that
`pandoc` 2.5 knows how to output for.  Running `make setup` will clone the
`reveal.js` repo and checkout that exact version for you.

If you have a newer version of `pandoc`, you will also want the newer version
of `reveal.js`; I believe the current (as of August 2022) versions of both
will work together as well.


## Accessibility Note

The visible portion of this presentation is mostly images, with only a small
amount of text.  However, all of the image descriptions should be captured in
the image *titles* (sadly **NOT** the alt text, which would be traditional,
because of weird alt text behavior in the slide viewer app) and in the slide
notes, which pretty much include my full slide-by-slide planned script.

(I babbled a bit more when I actually did the recording, but the script in
these "speaker notes" should contain enough to follow along pretty well.)

`reveal.js` has a speaker notes viewer built in, but even without that you
should be able to read the `::: notes` blocks in the
[`outline.md` source file](outline.md) to see the script.


# LICENSE

This talk and associated content and tools are licensed under a Creative
Commons Attribution 4.0 International License, except where stated otherwise.
Please see http://creativecommons.org/licenses/by/4.0/ for details.

Images not created by Geoffrey Broadwell personally are credited individually
in [`outline.md`](outline.md).
