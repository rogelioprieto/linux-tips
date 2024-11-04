---
layout: post
title: "Sync Microsoft OneDrive in Linux"
categories: github virtualbox
---


## Problem:

I need to use my Microsoft One Drive on Linux as a local hard disk and keep it sync.

## Solution:

There is no official OneDrive client for Linux computers. The functionality of drive syncing can be achieved by using the third party software RClone. RClone requires a Linux computer with a GUI interface (it will not work on command line only installs).

¡Important! [RClone](https://rclone.org/) is a third party software not supported by Microsoft.

We are following the solution in two parts:

- **PART 1.** Install and setup rclone and OneDrive on Linux
- **PART 2.** Mount the One Drive in a Linux

## PART 1. Install and setup rclone and OneDrive on Linux

There is no official OneDrive client for Linux computers. The functionality of drive syncing can be achieved by using the third party software RClone. RClone requires a Linux computer with a GUI interface (it will not work on command line only installs).

¡Important! RClone is a third party software not supported by Microsoft.

1. Open a terminal window and install RClone using the following command.

    ```bash
    curl https://rclone.org/install.sh | sudo bash
    ```

2. Start configuring OneDrive in RClone by running the config command.

    ```bash
    rclone config
    ```

3. You will be prompted with configuration options. Choose **`n`** to create a new remote.

    ```bash
    >>>No remotes found, make a new one?
    n) New remote
    s) Set configuration password
    q) Quit config
    n/s/q> n
    ```

4. Enter **`OneDriveITC`** as the name for the remote.

5. For storage type, enter **`onedrive`** (or the corresponding number).

6. Leave client_id and client_secret empty. Press **`enter`** key to leave the fields blank.

    ```bash
    >>>Option client_id.
    OAuth Client Id.
    Leave blank normally.
    Enter a value. Press Enter to leave empty.
    client_id> 
    >>>Option client_secret.
    OAuth Client Secret.
    Leave blank normally.
    Enter a value. Press Enter to leave empty.
    client_secret>
    ```

7. Enter **`1`** for the region.

8. Press **`n`** to skip advanced configuration.

    ```bash
    >>>Edit advanced config?
    y) Yes
    n) No (default)
    y/n> n
    ```
9. Press **`y`** to use auto configuration.

    ```bash
    Use web browser to automatically authenticate rclone with remote?
    * Say Y if the machine running rclone has a web browser you can use
    * Say N if running rclone on a (remote) machine without web browser access
    If not sure try Y. If Y failed, try N.
    y) Yes (default)
    n) No
    y/n> y
    ```
    
10. A browser window will open to a Microsoft login screen. Login using your TecNM email address and NetID password.

    ![login screen](https://raw.githubusercontent.com/rogelioprieto/linux-tips/refs/heads/master/_posts/images_posts/onedrive-microsoft-login01.png)

    ![password screen](https://raw.githubusercontent.com/rogelioprieto/linux-tips/refs/heads/master/_posts/images_posts/onedrive-microsoft-login02.png)

11. After logging in, close the browser window and go back to the terminal that is running RClone.


12. When prompted for `config_type` (Type of connection) enter **`onedrive`** or **`1`**.

13. When prompted for `Option config_driveid` choose **`2`** (Documentos (business)).

14. You’ll be prompted to connect to the root of your OneDrive. Press **`y`** to continue.

    ```bash
    >>>Drive OK?
    Found drive "root" of type "business"
    URL: URL: https://itculiacanedu-my.sharepoint.com/personal/d24171315_culiacan_tecnm_mx/Documents

    y) Yes (default)
    n) No
    y/n> y
    ```

15. Press **`y`** to confirm that the remote is ok.

    ```bash
    >>>y) Yes this is OK (default)
    e) Edit this remote
    d) Delete this remote
    y/e/d> y
    ```

16. Press **`q`** to close the remote configuration procedure.

    ```bash
    Current remotes:
    Name                 Type
    ====                 ====
    OneDriveITC          onedrive
    e) Edit existing remote
    n) New remote
    d) Delete remote
    r) Rename remote
    c) Copy remote
    s) Set configuration password
    q) Quit config
    e/n/d/r/c/s/q> q
    ```

17. Create a **`OneDriveITC`** directory in your home folder to mount the remote that you just created.

    ```bash
    mkdir ~/OneDriveITC
    ```

18. Mount the remote by using the command:

    ```bash
    rclone --vfs-cache-mode writes mount OneDriveITC: ~/OneDriveITC &
    ```
19. Close the terminal window. You should now have OneDrive mounted in your file system.

¡IMPORTANT! If you reboot the computer you will need to remount the remote using the command in _step 17_.

## PART 2. Mount the One Drive in a Linux at startup

1. You can verify that your remote is working by using:

    ```bash
    rclone ls OneDriveITC:
    ```
    It will appear a listing remote contents:

    ![](https://raw.githubusercontent.com/rogelioprieto/linux-tips/refs/heads/master/_posts/images_posts/onedrive-listing-files.png)

2. Get the config location using:
    ```bash
    $ rclone config file
    /home/rogelio/.config/rclone/rclone.conf
    ```
    Copy the file path!

3. Set read permissions to the config file :
    ```
    chmod 640 /home/rogelio/.config/rclone/rclone.conf
    ```
    Please, replace (paste) the config file path.


4. To mount, try this command:
    ```bash
    rclone mount --vfs-cache-mode full OneDriveITC: ~/OneDriveITC --config /home/rogelio/.config/rclone/rclone.conf
    ```

    Please, replace (paste) your config path.

    Try to copy or create files for testing that mount point is working.

    _Note:_ `vfs-cache-mode` has two options: `full` or `writes`. `full` is recommended if you want to reduce latency, but the space in HDD will be up. `writes` is the option if mainly you will write.



5. In these next steps, we'll create a systemd service. Go to `/etc/systemd/system/` and create a new file called `rclonemountITC.service` and paste this in:

    ```bash
    [Unit]
    Description=Rclone mount ITC
    AssertPathIsDirectory=/media/rogelio/DATA-HD-4TB/OneDriveITC
    After=network-online.target
    [Service]
    Type=simple
    ExecStart=/usr/bin/rclone mount \
            --config=/home/rogelio/.config/rclone/rclone.conf \
            --vfs-cache-mode full \
            OneDriveITC: /media/rogelio/DATA-HD-4TB/OneDriveITC
    ExecStop=/bin/fusermount -u /media/rogelio/DATA-HD-4TB/OneDriveITC
    Restart=always
    RestartSec=10
    User=rogelio
    [Install]
    WantedBy=default.target
    ```

    Replace `rogelio` by your username in your local computer.

6. Save it and execute it by running `systemctl start rclonemountITC`. You can view if it failed or not by running `systemctl status rclonemountITC`.

    To make it execute on next boot, execute `systemctl enable rclonemountITC` and it should run on the next reboot.

    If you do any changes to `rclonemountITC.service` file, make sure to execute `systemctl daemon-reload` to reload any changes you’re done.

### Fixing things

After terminating rclone, FUSE usually doesn’t dismount correctly. We’ll have to run `fusermount -u <mountpoint>` to unmount it correctly. If it says its busy, force it by `umount -l <mountpoint>` and then using the fusermount command again.

## Source:

- Knowledge Base - University of Connecticut  
<https://kb.uconn.edu/space/IKB/26050527301/Setting+up+OneDrive+on+Linux>

- Mounting Onedrive with Rclone mount on startup with Systemd  
<https://thunderysteak.github.io/rclone-mount-onedrive>

- Forum - Rclone is very slow to opening files  
<https://forum.rclone.org/t/rclone-is-very-slow-to-opening-files/33416/4>

- Rclone cache  
<https://rclone.org/commands/rclone_mount/#vfs-file-caching>

- Rclone OneDrive setup  
<https://rclone.org/onedrive/>