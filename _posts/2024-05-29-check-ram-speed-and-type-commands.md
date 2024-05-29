---
layout: post
title: "Check ram speed and type commands"
categories: linux ubuntu
---

## Problem: 

I need to know about memory RAM installed: slots, speed, etc.

## Solution:
To solve it, you can use the `dmidecode` command. This command works on Linux, UNIX and *BSD based computers. `dmidecode` is a tool or dumping a computer’s DMI (some say SMBIOS) table contents in a human-readable format. The output contains a description of the system’s hardware components, as well as other useful pieces of information such as serial numbers and BIOS revision.

### Step by step:

1. Open a Terminal, type:

```bash
sudo dmidecode --type 17

```

*Optional:*
In case you need to install it:
```bash
sudo apt install dmidecode

```




## Source:

<https://www.cyberciti.biz/faq/check-ram-speed-linux/>
