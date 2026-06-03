---
layout: post
title: Set up shared Conda environments between multiple users
categories: conda bioinformatics
---

## Problem: 

How to set up Conda (or Miniconda) for shared environments between users and without duplicating heavy packages across their home directories?

## Solution:

Install `Conda` in a centralized directory, configure a shared environment path via a .condarc file, and manage Linux/Windows user group permissions.

## Step 1: Install Conda Globally 

An administrator must install Conda (or Miniconda) to a public directory accessible to all users. Avoid installing it in any single user's `/home` directory. [Conda Documentation.](https://docs.conda.io/projects/conda/en/stable/user-guide/configuration/admin-multi-user-install.html)


```bash
# Download and install to a shared directory like /opt/conda
sudo bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda
```

Use code with caution.

## Step 2: Configure System-Wide Paths 

Create or modify the global configuration file at `/opt/conda/.condarc`. This forces Conda to look for and create environments in your designated shared location. [Conda Documentation.](https://docs.conda.io/projects/conda/en/stable/user-guide/configuration/admin-multi-user-install.html)

```yaml
# /opt/conda/.condarc
envs_dirs:
  - /opt/conda/envs
  - ~/.conda/envs

pkgs_dirs:
  - /opt/conda/pkgs
  - ~/.conda/pkgs
```

_The first paths listed act as the primary shared target. The second paths serve as user-specific fallbacks._ [Conda Documentation.](https://docs.conda.io/projects/conda/en/stable/user-guide/configuration/admin-multi-user-install.html)


## Step 3: Set Group Directory Permissions 

To let team members utilize or update these environments, manage permissions using a dedicated system group. [Anaconda.](https://www.anaconda.com/docs/getting-started/advanced-install/multi-user)

1.  **Create a user group:**

    ```bash
    sudo groupadd bioinformatics
    ```
     
2.  **Add users to the group:**
    
    
    ```bash
    sudo usermod -aG bioinformatics username
    ```
        
3.  **Change directory ownership:**
   
    ```bash
    sudo chown -R root:bioinformatics /opt/conda
    ```
     
4.  **Set Read/Write permissions:**  
    Choose one of the two strategies below depending on how much control you want to grant your users:
    -   **Admin-Managed (Read-Only for users):** If only administrators should modify environments, leave permissions restrictive. Users can still run `conda activate` but cannot change packages.
    -   **Collaborative (Read/Write for users):** If users need to modify environments or install packages, run:
     
        ```bash
        sudo chmod -R 775 /opt/conda
        sudo chmod -R g+s /opt/conda/envs /opt/conda/pkgs
        ```

        _(The `g+s` SGID bit ensures new folders inherit the `bioinformatics` group ownership automatically)._ [GitHub ](https://github.com/conda/conda/issues/1329)

## Step 4: Configure centralized initialization script

### (option 1: recommended!) Global method: set up a soft link

```bash
sudo ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh

```

#### Explanation:
It recommends creating a symbolic link (`ln -s`) to **automate the setup for all current and future users simultaneously**, rather than making every individual user manually edit their personal `~/.bashrc` file. 

Here is why this method is highly efficient for system administrators: 

1\. **Global Automation** 

The `/etc/profile.d/` directory is a special folder used by Linux operating systems. Every time _any_ user logs into the system or opens a new terminal shell, Linux automatically runs every script located inside this folder. By placing the Conda initialization shortcut there, Conda becomes instantly available to everyone. 

2\. **No Manual User Intervention** 

Without this link, every new team member or user added to the system has to manually run `source /opt/conda/etc/profile.d/conda.sh` or `conda init`. Linking it globally removes human error and ensures the system works right out of the box for everyone. 

3\. **Clean and Maintainable** 

A symbolic link is just a shortcut. If you ever update Conda or change files inside `/opt/conda/`, you do not have to update any user files. The shortcut simply continues to point to the correct, active configuration.


### (option 2) Configure User Profiles 

Every user needs access to the centralized Conda initialization script. Instruct your users to add this command to their `~/.bashrc` or profile initialization files: [Stack Overflow](https://stackoverflow.com/questions/48871289/how-to-share-an-anaconda-python-environment-between-multiple-users)



```bash
source /opt/conda/etc/profile.d/conda.sh
```

Once updated, running `conda env list` will show the shared environments to all members of the group.


### Comparison of the Two Approaches 

-   **The Global Method (The Symlink):** The administrator runs the `sudo ln -s` command once. The system handles the rest for all users automatically.

-   **The User Method (Step 4):** Every user must manually add `source /opt/conda/etc/profile.d/conda.sh` to their own `~/.bashrc` file.



## Sources:
- [Conda Documentation](https://docs.conda.io/projects/conda/en/stable/user-guide/configuration/admin-multi-user-install.html)
- [Gemini AI by Google](https://gemini.google.com/)
- [Stack Overflow](https://stackoverflow.com/questions/48871289/how-to-share-an-anaconda-python-environment-between-multiple-users)
- [GitHub ](https://github.com/conda/conda/issues/1329)