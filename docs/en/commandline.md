---
title: "Command Line Options"
sidebar_label: "Command Line Options"
---

## Command Line Options

### Description

When you run BASIC256 from the command line (shell or cmd) you may specify options to change the User Interface (UI) and how it behaves. The options are listed in the table below. Every option has a short form and one or more long forms; both do exactly the same thing.

|  |  |
|----|----|
| Option | Description/Usage |
| -h, --help | Show the list of options and exit. On Windows -? does the same. |
| --help-all | As --help, but also lists the options Qt itself understands. |
| -v, --version | Show the BASIC256 version and exit. |
| -l, --lang, --language *language* | Set Language/Locale. Translations are supplied for “de”, “en”, “es”, “fr”, “it”, “nl”, “pt” and “ru”. A locale that names a region, such as “nl_BE”, falls back to the language part. Without this option the system locale is used. |
| -r, --run | Load and Run program showing the code and allowing user to re-run the code. |
| -a, --app, --application | Load and run the program in application mode, closing BASIC-256 once the program completes. |
| -g, --graph | Load and run the program showing only the Graphics Output window. |
| -t, --text | Load and run the program showing only the Text Output window. |
| -f, --full | With -r, -a, -g or -t: resize the window to the full available screen. Ignored on its own. |
| -s, --silent | Run the program with no GUI at all. PRINT output goes to standard output, errors go to standard error, and the exit status of the process says whether the program succeeded. Requires a file name, and cannot be combined with -r, -a, -g or -t. |

A BASIC256 program name may also be specified on the command line, but it must end with the <u>*.kbs*</u> extension. This file will be loaded into the Edit window and automatically ran of the -r option is also specified.

The -a, -g and -t options are the ones to use to run a program like an application, without showing the code. Be aware that the [GraphVisible](./graphvisible.md), [EditVisible](./editvisible.md) and [OutputVisible](./outputvisible.md) statements inside a program are carried out while it runs, so a program may put back a window the option had hidden.

Without a file name to run, -r, -a, -g and -t are ignored and the normal IDE opens. -s is stricter: it reports the problem on standard error and stops with an exit status of 1, which is also what happens when the file cannot be loaded or the program ends with an error. A program that runs to the end exits with a status of 0.

On Windows, BASIC256 is a windowed program rather than a console one. It writes the output of --help and --version, and the messages and PRINT output of -s, to the console it was started from; started from Explorer or a shortcut there is no such console and that text has nowhere to go.

### Example

    basic256 -r hello.kbs

    basic256 -g -f Mandelbrot-256.kbs

    basic256 -s makeindex.kbs > index.txt

runs a program in the IDE, then fills the screen with just the graphics of a
program, and finally runs a program with no windows at all and captures what it
prints in a file.

### See Also

[EditVisible](./editvisible.md), [GraphVisible](./graphvisible.md), [OutputVisible](./outputvisible.md)

### History

|            |                     |
|------------|---------------------|
| 0.9.6.67   | New to version      |
| 1.99.99.55 | added the -a option |
| 2.1        | added the -g, -t, -f and -s options, and documented --help, --version and the long forms of the older options |
