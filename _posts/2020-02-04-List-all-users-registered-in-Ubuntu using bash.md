---
layout: post
title: List all users registered in Ubuntu using bash
categories: linux bash
---


## Problem: 
You need to get a users list.


## Solution:

View the content of a file that contains username list.


### Step by step:

The local user information is stored in: `/etc/passwd`

1. List the file contents: `less /etc/passwd`

This will show the columns:

- username
- Password encrypted (A ‘x‘ in this field denotes the password is encrypted and saved in the /etc/shadow file.    
- UID
- GID
- GECOS (Full name user)
- User home directory
- Shell (by default `/bin/bash`)

2. To display only the usernames (first column), try this `awk` script:

```
awk -F: '{ print $1}' /etc/passwd
```

or use the cut command:
```
cut -d: -f1 /etc/passw
```