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



## Source:

<https://snapcraft.io/docs/get-started>