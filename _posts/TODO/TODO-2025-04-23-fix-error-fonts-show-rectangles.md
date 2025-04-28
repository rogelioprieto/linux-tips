

<https://askubuntu.com/questions/1224125/font-characters-displayed-as-squares-in-ubuntu-18-04>

Problem:
Font characters displayed as squares in Ubuntu 18.04


Solution:

This solution applies to another apps, for example, Handbrake Video Converter, and I hope so for any other using the snap package format.

First, you need to update local cache as described here:

```bash
rm -rf ~/.cache/fontconfig 
sudo fc-cache -r -v

```

Then, you need to find fontconfig folder inside snap, since this is the snap version of chromium.

```bash
find ~/snap/chromium/ -name 'fontconfig'

```

Last, remove this folder inside .cache:

```bash
rm -rf ~/snap/chromium/common/.cache/fontconfig/

```

Afterwards, chromium will recreate this folder automatically by using your local updated fontconfig inside `~/.cache/fontconfig`.

Restart chromium browser to take this effect.

Source:\
<https://askubuntu.com/a/1228809>
