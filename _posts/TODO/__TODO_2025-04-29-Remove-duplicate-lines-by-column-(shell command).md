---
layout: post
title: Remove duplicate lines by column (using bash)
categories: bash scripts
---

## Problem: 

You need to delete duplicate lines in specific column.

## Solution:
Use a bash script to solve this, Because your data file size is big.

### Step by step:

1. Create a data file for testing.
```bash
$ echo -e "aaa,222,2323\nbbb,111,3434\naaa,444,2323\nzzz,222,3434\naaa,111,3434" > example.csv
$ cat example.csv
aaa,222,2323
bbb,111,3434
aaa,444,2323
zzz,222,3434
aaa,111,3434
```
2. Open bash and  type these commands:

```bash
sort -t, -u -k1,1 example.csv
sort -t, -u -k2,2 example.csv
sort -t, -u -k3,3 example.csv
```

**\-t** argument tells it to use comma.

**\-k** says which column it is you want it to sort the result it by.

**\-u** to say you want a **unique** result, and a second number to **\-k** to say which column should be unique

¡Important note!⚠️: Documentations is not clear on how to use -k argument properly, and I get wired results if I pass it differrent numbers. Although, as long as both numbers are the same (1,1 or 3,3) you get the results you expect.


## Source:

<https://medium.com/@arshamshirvani/remove-duplicate-lines-by-column-shell-command-f6d7a3bb2316>