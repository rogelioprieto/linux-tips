https://www.diskpart.com/articles/exfat-windows-7-read-only-4125.html


How to fix exFAT Windows 7 read only?

When you receive the exFAT is mounted as read-only in Windows 7, to solve it, you can make use of Windows Diskpart.

Open CMD prompt, and type in the command as the following:

diskpart

list volume

selectvolume N (N refers the volume number of the read-only disk)

att vol clear readonly

Besides, you can run “chkdsk /” in cmd.exe or run the GUI based scan by right-clicking on the exFAT partitioned drive and selectingProperties-> Tools and running theScan disk tool. The exFAT partition needs the scan to be done to reset it back to read/write capable.
