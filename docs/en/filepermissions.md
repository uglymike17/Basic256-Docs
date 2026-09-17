---
title: "File and Folder Permissions"
sidebar_label: "File Permissions"
---

## File and Folder Permissions

### Description

BASIC-256 programs are shared, downloaded and handed around, and are often run
by somebody who did not write them and has not read them. So that a program
cannot quietly damage, delete or read files elsewhere on the computer, every
statement that names a file or a folder is checked before it runs.

**A program may use its own folder freely.** The folder the program was loaded
from, and every folder below it, belongs to the program. Creating, reading,
writing and deleting files there happens with no question asked. Most programs
never touch anything else and are completely unaffected by this.

When run from the IDE, that folder is the one the program file is saved in.
When run from the command line, it is the folder you were in when you started
BASIC-256.

**Anything outside that folder is the user's decision**, not the program's.

### Statements that are checked

| Statement | What is checked |
|----|----|
| [Open](./open.md), [Openb](./open.md) | the file being opened |
| [Kill](./kill.md) | the file being deleted |
| [MkDir](./mkdir.md) | the folder being created |
| [ImgSave](./imgsave.md) | the image file being written |
| [DbOpen](./dbopen.md) | the database file being opened |
| [DbExecute](./dbexecute.md), [DbOpenSet](./dbopenset.md) | the file named by an `ATTACH DATABASE` or `VACUUM INTO` statement |

### Statements that are not checked

[Read](./read.md), [Readline](./readline.md), [Readbyte](./readbyte.md),
[Write](./write.md), [Writeline](./writeline.md), [Writebyte](./writebyte.md),
[Seek](./seek.md), [Reset](./reset.md), [Close](./close.md), [Eof](./eof.md) and
[Size](./size.md) are **not** checked separately. They all work on a file that
[Open](./open.md) has already opened, and the decision was made then. A program
that writes ten thousand lines is asked at most once, when it opens the file.

[Exists](./exists.md), [Dir](./dir.md), [Currentdir](./currentdir.md) and
[Changedir](./changedir.md) do not read or change the contents of any file and
are not checked.

### How permission is asked

Running in the IDE, a program that reaches outside its folder brings up a
window naming the full path it is trying to use, with three answers:

| Answer | Meaning |
|----|----|
| Don't allow | The statement fails with an error. This is the default if the window is dismissed. |
| Allow once | This one statement goes ahead. The next one asks again. |
| Allow for this run | Nothing more is asked until the program stops. |

There is deliberately no "do not ask me again" here: the widest answer offered
ends when the program does.

A lasting answer is set in **Preferences**, on the Advanced tab, under *Allow
files outside the program's folder*:

| Setting | Meaning |
|----|----|
| Do not allow | Reaching outside the folder always fails. |
| Ask confirmation from user | The window above appears. This is the default. |
| Allow | No checking; any file on the computer may be used. |

Preferences can be given a password, so a school or a parent can set this once
and fix it.

Run from the command line with `-s` or `--silent` there is nobody to ask, so a
program that reaches outside its folder is refused.

In the browser version there is no checking at all. The files a program sees
there are private to the browser and to that page, and cannot reach the rest of
the computer in the first place.

### Things worth knowing

**[Changedir](./changedir.md) does not move the boundary.** The folder a program
may use is fixed when the program starts. `changedir` changes the working
directory, so a plain file name will be looked for somewhere else, but the area
the program is allowed to use does not follow it.

**Paths are worked out before they are checked.** `"../../wages.txt"` is
resolved to the real file it names, and so are shortcuts and symbolic links. A
path that goes up out of the folder and comes back into it again -- for example
`"pictures/../notes.txt"` -- is inside the folder and is allowed.

**A file the user chose is already allowed.** When a path comes back from
[OpenFileDialog or SaveFileDialog](./opensavefiledialog.md), the user picked
that file themselves, so nothing further is asked about it even if it is
somewhere else on the computer. This is the tidy way for a program to work on a
file outside its own folder.

**Being refused is an error a program can catch.** It is
`ERROR_PERMISSION`, number 46, *You do not have permission to use this
statement/function*, and the message names the path. A program that may
reasonably be told no can put the statement in a
[Try / Catch](./try.md) block and carry on.

### Databases

[DbOpen](./dbopen.md) is checked, but that only covers the first file. SQLite
can be told to open further files from a connection that is already open, so
the file named by `ATTACH DATABASE` or by `VACUUM INTO` is checked in the same
way. Attaching a second database beside the program works as it always did;
attaching one somewhere else is refused.

Two forms are refused outright rather than checked, because what they would do
cannot be known in advance: a name written as a `file:` URI, which carries its
own settings, and a name built up by an expression instead of written out as
text. `ATTACH DATABASE ':memory:'` needs no file and is always allowed.

### Removing folders

There is no `rmdir` statement. To remove a folder, use the
[System](./system.md) statement to run the command your operating system
provides for it, which is governed separately by *Allow SYSTEM statement* in
Preferences and is switched off by default. On Windows `rmdir` is built into
the command interpreter rather than being a program of its own, so it has to be
run as `system "cmd /c rmdir myfolder"`.

### Networking

[NetListen](./netlisten.md) accepts connections only from this computer unless
that is changed in Preferences. See that page.

### See Also

[Changedir](./changedir.md), [Close](./close.md), [Currentdir](./currentdir.md), [Dir](./dir.md), [Eof](./eof.md), [Exists](./exists.md), [Freefile](./freefile.md), [Kill](./kill.md), [mkdir](./mkdir.md), [Open](./open.md), [Openb](./open.md), [OpenFileDialog](./opensavefiledialog.md), [OpenSerial](./openserial.md), [Read](./read.md), [Readbyte](./readbyte.md), [Readline](./readline.md), [Reset](./reset.md), [SaveFileDialog](./opensavefiledialog.md), [Seek](./seek.md), [Size](./size.md), [System](./system.md), [Write](./write.md), [Writebyte](./writebyte.md), [Writeline](./writeline.md)

### History

Introduced after version 2.2.0.
