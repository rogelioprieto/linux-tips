
Problem:
How to customize the shell prompt in the VS Code terminal?


Solution:

I use Ubuntu with bash, and I only add the following lines to the end of `~/.bashrc`:

```bash
if [ "$TERM_PROGRAM" = "vscode" ]; then
  PS1='\[\033[01;34m\]\w\[\033[00m\]\$ '
fi
```

I found that vscode sets `TERM_PROGRAM` environment variable, and then use it to modify `PS1` only to vscode.



so I added these lines to `~/.bashrc`:

```bash
#by RPA, april 2025
#https://stackoverflow.com/a/55206737
if [ "$TERM_PROGRAM" = "vscode" ]; then
#green+white
  PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]\[\033[00m\]\$ "
#green
#  PS1='\[\033[01;32m\]$ '

fi
```

