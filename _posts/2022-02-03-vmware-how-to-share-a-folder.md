---
layout: post
title: "How to setup a shared a folder in Vmware"
categories: vmware virtual
---

## Problem: 

I have a linux host with a windows virtual machine. I'm using vmware.
How to setup a shared folder in my virtual machine using Vmware?

## Solution:
To solve it, you can set which folder you want to share in the host machine and map a network drive in windows virtual machine. 

### Step by step:

1. Setup shared folder in vmware, `Virtual Machine -> Settings -> Options`. Set a name, you will use this name in the next step.
2. Map the network drive in windows.
Open My PC. Right clic in `My computer` -> `Connect a network drive`.
Type the path `\\vmware-host\Shared Folders\shared_folder_name`.



## Source:
<https://docs.vmware.com/en/VMware-Workstation-Pro/16.0/com.vmware.ws.using.doc/GUID-D6D9A5FD-7F5F-4C95-AFAB-EDE9335F5562.html>
<https://docs.vmware.com/en/VMware-Workstation-Pro/16.0/com.vmware.ws.using.doc/GUID-13804128-3436-422C-80EC-A1697EF75C17.html#GUID-13804128-3436-422C-80EC-A1697EF75C17>
