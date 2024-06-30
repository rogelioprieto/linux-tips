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
sudo dmidecode -t memory
```

*Optional:*
In case you need to install it:
```bash
sudo apt install dmidecode
```

*Optional:*
If you want to extract/show just few fields:
```bash
sudo dmidecode --type 17 | \
awk '{if($0 ~ "^\t+Locator:") print "\n"$0; \
else if($0 ~ "Type:" || $0 ~ "Speed:" || $0 ~ "Manufacturer:") print $0 }'
```

## Source:

<https://www.cyberciti.biz/faq/check-ram-speed-linux/>
