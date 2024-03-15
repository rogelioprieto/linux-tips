---
layout: post
title: How to get frequency and type of RAM
categories: linux ubuntu
---

## Problem: 

I want to buy more RAM for installing in my computer. What kind of RAM I should buy?

## Solution:
To solve it, you can determine the frequency and type of the current RAM installed in your computer.

### Step by step:

1. Open a `Terminal`.
2. Type this command:
```bash
 sudo lshw -short -C memory
```
You'll get a table with the fields: H/W path, Device, Class, Description.

## Source:

<https://askubuntu.com/a/391178>

