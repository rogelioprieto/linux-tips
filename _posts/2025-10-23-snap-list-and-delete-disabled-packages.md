---
layout: post
title: "Snap: list and delete the disabled packages"
categories: python programming
---

## Problem: 

The disabled snap packages are using space in your hard disk.

## Solution:
To solve it,  You can list and delete them!.

### Step by step:

1. Open a Terminal and list all the snap packages:

    ```bash
    snap list --all
    ```

	You can filter to get the disabled only:

    ```bash
    snap list --all | grep "disabled"
    ```

2. Remove a specific revision ("version") snap package.


    ```bash
    $ sudo snap remove <snapname> --revision=<revision_number>
    ```

    Example:
    ```bash
        sudo snap remove okular --revision=172
    ```

3. Finally, you can verify that the package was successfully removed.

    ```bash
    snap list --all
    ```

### Optionally
You can use this script for deleting ALL the disabled snap apps:
```bash
LANG=C snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        sudo snap remove "$snapname" --revision="$revision"
    done
echo "Deleting cache"
sudo sh -c 'rm /var/lib/snapd/cache/*'
```

## Source:

- <https://snapcraft.io/docs/get-started>
- <https://superuser.com/a/1330590>