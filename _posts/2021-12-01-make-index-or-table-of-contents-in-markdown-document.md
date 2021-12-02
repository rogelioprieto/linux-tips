---
layout: post
title: Make an index or table of contents in a markdown document
categories: github virtualbox
---

## Problem: 

I need to make an index or Table of Contents in a markdown document.
For every: `## My title ` I have to make a link: [My title](#my-title)

## Solution:
To buil it automatically, you can use an awk script. 

### Step by step:
_Option 1_ Execute the script directly in Terminal.
1. Open a `Terminal` and type the awk script:
```bash
awk '$0 ~ /^## / {gsub(/^## /,"",$0); gsub(/ $/,"",$0); mytitle=$0; $0=tolower($0);  gsub(/\(|\)|\[|\]|\/|\:|\./,"",$0);    gsub(/ /,"-",$0);    print "["mytitle"]""(#"$0")" }' mydatafile.md
```

2. The last awk script get list of links: every link in a new row. If you want a list comma separated you can execute this script:
```bash
awk '$0 ~ /^## / {gsub(/^## /,"",$0); gsub(/ $/,"",$0); mytitle=$0; $0=tolower($0);  gsub(/\(|\)|\[|\]|\/|\:|\./,"",$0);    gsub(/ /,"-",$0);    print "["mytitle"]""(#"$0")" }' mydatafile.md | awk '{acumulador=acumulador", "$0}END{print substr(acumulador,3)}'
```


_Option 2_ Create awk files and then execute from Terminal.


1. Create the file `make-index-links.md` with these lines:
```
#/bin/bash/awk
$0 ~ /^## / {gsub(/^## /,"",$0); gsub(/ $/,"",$0); mytitle=$0; $0=tolower($0);  gsub(/\(|\)|\[|\]|\/|\:|\./,"",$0);    gsub(/ /,"-",$0);    print "["mytitle"]""(#"$0")" }
```

2. Create the file `replace-newline-for-comma-and-space.awk` with these lines:
``` 
#/bin/awk
{acumulador=acumulador", "$0}END{print substr(acumulador,3)}
```

3. Execute from Terminal:
```
awk -f make-index-links-in-markdown.md mydatafile.md | awk -f replace-newline-for-comma-and-space.awk 
```



## Source:
<https://www.gnu.org/software/gawk/manual/gawk.html>
<https://www.gnu.org/software/gawk/manual/html_node/String-Functions.html>
