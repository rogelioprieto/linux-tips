---
layout: post
title: Error insert eps file in LaTeX
categories: github virtualbox
---

## Problem: 

When you insert an eps file in LaTeX you get this error:
`Converted xxx-eps-converted-to.pdf not found`

## Solution:
Install `texlive-font-utils`, a TeXLive package to solve this problem in Ubuntu.  In specific you need the `repstopdf` package and their requirements, this is included in `texlive-font-utils`.

_Note:_ if you are not using ubuntu try to install the `repstopdf` package using `tlmgr` or another package manager.


### Step by step:

1. Open a Terminal and type:

```
sudo apt-get install texlive-font-utils
```

2. Compile your LaTeX file again!


## Source:

<https://tex.stackexchange.com/questions/76455/converted-xxx-eps-converted-to-pdf-not-found>