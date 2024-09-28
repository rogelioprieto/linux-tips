---
title: Okular how to configure Web Shortcuts?
date: sept 2024
---
Problem:
When I select some text in Okular with right click in the mouse I can chose with a context menu " Search for "[SELECTED TEXT]" with . . . " that in turn presents four web search engines which conveniently opens a new tab in my current browser - and a 5th "configure web shortcuts" option, this one don't work.

Solution:
```bash
sudo apt-get install kde-cli-tools
```

Aditionally, you can configure the Google translate with:

```bash
https://translate.google.com/?sl=auto&tl=es&text=\{@}&op=translate

```

Sources:\
<https://discuss.getsol.us/d/8327-okular-web-shortcut>

