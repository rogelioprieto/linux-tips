
# Auto Mount Drive in Ubuntu Server 22.04 at Startup 

When we connect an external drive, by default, Linux OS (or Ubuntu
Server) doesn\'t automount the external drive at startup. We can mount
it very easily using the `mount` command but we want to enable automount
feature on startup. So, we don\'t need to mount the drive again after
restarting or logging into Linux OS. Here are steps to auto mount drive
at startup -

## 1. Create the Mount Point 

First, we need to create a directory which will be our mount point for a
drive

```bash
sudo mkdir /media/USB1
```

## 2. Get Drive UUID and Type

Now, we need to get the drive UUID and File System Type. This
information we need in the next step. So, to find the drive\'s UUID and
File System Type, run the following command -

```bash
lsblk -o NAME,FSTYPE,UUID,MOUNTPOINTS
```

This will return something like what we have below. Here you can see,
sd2 is type exfat and doesn\'t have any mount point. So, we need to
mount this sda2 on `/media/USB1`. There UUID for this is `632D-7154` and
File System Type is `exfat`. So, Copy the UUID and File System Type from
the disk.

```bash
NAME   FSTYPE   UUID                                 MOUNTPOINTS
sda                                                  
├─sda1 vfat     67E3-17ED                            
└─sda2 exfat    632D-7154
sdb                                                  
├─sdb1 vfat     D7E2-9D99                            /boot/firmware
└─sdb2 ext4     b09bb4c8-de4d-4ce6-a93f-30c4c9241a58 /
```

## 3. Edit fstab 

To edit the fstab file run the following command (note I\'m using nano
here but use whatever editor you prefer)

```bash
sudo nano /etc/fstab
```

You\'ll see something like this -

```bash
LABEL=writable  /       ext4    discard,errors=remount-ro       0 1
LABEL=system-boot       /boot/firmware  vfat    defaults        0       1
```

Here we need to add one more entry for our drive. The format for adding
a new entry is something like this -

```bash
<file system> <mount point>   <type>  <options>       <dump>  <pass>
UUID=<UUID> <PATH_TO_MOUNT> <DRIVE_TYPE>  defaults        0       0
```

So, here is the entry for our drive

```bash
# USB1
UUID=632D-7154 /media/USB1   exfat    defaults        0       0
```

## 4. Test fstab {#4-test-fstab}

Now we\'ll test the `fstab` before rebooting because an invalid `fstab`
can render a disk unbootable. So, for the test, run the following
command and check if there is any error or warnings. Do not reboot your
Ubuntu Server / Linux OS without resolving those errors or warnings (if
any).

```bash
sudo findmnt --verify
```

## 5. Restart Ubuntu Server / Linux OS 

If the last step doesn't show any error or warnings then restart Ubuntu
Server / Linux OS using the following command -

```bash
sudo reboot
```

## 6. Test the Mount Point {#6-test-the-mount-point}

Run the same command which we run in Step 2 to check if our drive is
mounted to its mount point.

```bash
lsblk -o NAME,FSTYPE,UUID,MOUNTPOINTS
NAME   FSTYPE   UUID                                 MOUNTPOINTS
sda                                                  
├─sda1 vfat     67E3-17ED                            
└─sda2 exfat    632D-7154                            /media/USB1
sdb                                                  
├─sdb1 vfat     D7E2-9D99                            /boot/firmware
└─sdb2 ext4     b09bb4c8-de4d-4ce6-a93f-30c4c9241a58 /
```

Here you can see, `sda2` is now mounted to `/media/USB1`.



Source:\
<https://developerinsider.co/auto-mount-drive-in-ubuntu-server-22-04-at-startup/>
