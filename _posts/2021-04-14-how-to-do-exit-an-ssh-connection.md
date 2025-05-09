---
layout: post
title: How to do exit an ssh connection?
# categories: 
---

## Problem: 

I need to exit from an ssh connectio but is unresponsive (type and do nothing!).



## Solution:
To exit, you have to type a keys combination into the ssh connection.

### Step by step:

There are two ways:

1. _Normal_ way. Closing the shell session will usually exit, for example:
with the shell builtin command, `exit`, followed by `Enter`, or `Ctrl+d`, (end-of-file).

2. Hit `Enter~.` Hit the `Enter` key, hold it, then type `~.` and ssh should immediately close and return you to your command prompt. This way is used  in the case where you have a **bad connection** and the shell is unresponsive (or due to inactivity),

**Note:**

- In Ubuntu using windows keyboards `~` is get by pressing `Alt+ñ` (spanish layout).

- In MacOS on U.S. International - PC layout, press `Alt+N` and then `Space`.

- In Ubuntu, hold down together: `Alt Gr` + `4`.

- In Ubuntu, hold down together: `Ctrl` + `Shift` + `u` then a underlined u letter should appear.  Release keys. Enter `7E`(Unicode for ~), press `space` or `Enter`.


## Source:

<https://superuser.com/questions/467398/how-do-i-exit-an-ssh-connection>

<https://superuser.com/questions/190025/how-can-i-type-tilde-in-the-ubuntu-terminal-with-a-norwegian-keyboard>
