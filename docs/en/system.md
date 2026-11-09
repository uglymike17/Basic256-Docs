---
title: "System"
sidebar_label: "System"
---

## System (Statement)

### Format

**system** [expression](./expressions.md)\
**system** ( [expression](./expressions.md) )

### Description

Run a command or another program and wait until it has finished. WARNING: This can be a very dangerous statement. Only use it if you know what you are doing.

The program named first in the string is started directly, with the rest of the string as its arguments. No terminal window is opened and no command shell is used, and whatever the command prints is thrown away. Commands that are built into a shell rather than being programs of their own -- **dir**, **copy** and **del** on Windows -- need the shell to be named: system "cmd /c dir > files.txt" writes the list of files to files.txt, while system "dir" silently does nothing.

The statement is switched off unless Preferences/Advanced/"Allow SYSTEM statement" allows it. With **Do not allow**, the default, it stops the program with the error "You do not have permission to use this statement/function." With **Ask confirmation from user**, BASIC256 shows the command and asks first; a program run with --silent cannot be asked and is refused. **Allow** runs every command without asking.

### Example

    system "notepad"
    print "Notepad has been closed."

On Windows, opens Notepad and prints the message once Notepad is closed again.

### See Also

[EditVisible](./editvisible.md), [GraphToolBarVisible](./graphtoolbarvisible.md), [GraphVisible](./graphvisible.md), [Include](./include.md),[MainToolbarVisible](./maintoolbarvisible.md), [Maximize](./maximize.md), [OutputToolBarVisible](./outputtoolbarvisible.md), [OutputVisible](./outputvisible.md), [RegexMinimal](./regexminimal.md), [Ostype](./ostype.md), [System](./system.md), [Version](./version.md)

### History

|        |                |
|--------|----------------|
| 0.9.5h | New To Version |
