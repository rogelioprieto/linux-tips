---
layout: post
title: no GPT partition when install Ubuntu
categories: Ubuntu
---

## Problem: 

When I try to install Ubuntu in a **new** hard disk (don't care data). I get this error: 

> No EFI System Partition was found. This system will likely not to be able to boot successfully, and the installation process may fail. Please go back and add an EFI System Partition, or continue at your own risk.


This symptom is usually caused by a damaged (or inexistent) partition table.

## Solution:
To solve it, you can use of gparted application to create a partition table.

### Step by step:



1. Launch `GParted` on the disk.
2. If any partitions are mounted (as indicated by a lock or key icon), unmount them.
3. Select `Device->Create Partition Table`.
4. Click `Apply`.




## Source:

<https://superuser.com/questions/642420/using-gparted-to-convert-gpt-to-mbr-without-access-to-an-os>

