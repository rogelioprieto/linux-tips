# Windows 10 Ubuntu dual boot not working Windows 10 Ubuntu dual boot not working [QUICK SOLUTIONS]
## Problem:
Windows 10 Ubuntu dual boot not working 


## Solution 01: Repair from Windows – Command Prompt

The simplest way to try to solve this issue is by using the Command Prompt from Windows. In order to do this, please use the steps described below:

1. In Windows go to menu and search for Command prompt
2. Right click on Command Prompt and choose the option **Run as administrator** 

![Command Prompt window](images-all/command-prompt-run-as-administrator-win10.png)

3. Copy and paste (execute) the command:
```bcdedit /set {bootmgr} path EFIubuntugrubx64.eficommand prompt efi ubuntu```

4. Restart your computer.

**¡IMPORTANT! TRY SOLUTION 01 FIRST. if not works, after that try Solution 02.**

## Solution 2: Disable Fast Boot

You can also try to deactivate fast boot function of Windows 10 to access the GRUB menu. To do so, please follow the steps below:


1. Access `Control Panel`
2. Search for the term `power` in the search bar at the top right
3. Click on `Change what the power buttons do`
![](http://kmpic.asus.com/images/2021/03/10/168c7a17-2a90-4d0c-a1c9-be7bb02ca609.png)
4. Click on the `Change settings currently unavailable` control panel power options
![](http://kmpic.asus.com/images/2021/03/10/476772b2-09b0-4448-beff-825d9a08833d.png)
5. Uncheck the item `Turn on fast start up (recommended)`
![](http://kmpic.asus.com/images/2021/03/10/2185acca-7b8e-4f02-a41f-cc42f8058f76.png)




Source:

<https://windowsreport.com/fix-dual-boot-windows-10-ubuntu/>\
<https://www.asus.com/support/FAQ/1045548/>