---
layout: post
title: "write here the title!!!!"
title: Install SPAdes assembler using miniconda
subtitle: Setup a server for FCQB-UAS users
author: Rogelio Prieto Alvarado
categories: bioinformatics
---

# Install Ubuntu

## Steps:

1. Download and install Ubuntu 22.04.3 LTS (Desktop)
2. Install Ubuntu, create `bioinfoman` user. Set new password and keep it private.
3. After installation finished, create a new user, set `bioinfo123` password.
```bash
sudo adduser fcqb2023
```
4. Logout (GUI) session and login using the new user account.


# Install and setup miniconda

## Steps:

1. Download and install miniconda in home folder:

```bash
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
```

2. Close and reopen the Terminal (bash)

3. Disable auto activate base environment

```bash
conda config --set auto_activate_base False
```
4. Close and reopen the Terminal (bash)

5. Multi-user conda installation
```bash
#switch to root/admin user
su bioinfoman
myuser=fcqb2023
mypath=/home/$myuser/miniconda3/condabin/conda
mygroup=bioinformatica-fcqb
#Create a new group
sudo groupadd $mygroup
# Change the group ownership to "mygroup" on the entire directory where Anaconda is installed. Replace /PATH/TO/ANACONDA/INSTALL with the actual path to your installed Anaconda file.
sudo chgrp -R $mygroup $mypath
# Set read and write permission for the owner, root, and the mygroup only. Replace /PATH/TO/ANACONDA/INSTALL with the actual path to your installed Anaconda file.
sudo chmod 770 -R $mypath
# Add users to a group. Replace USERNAME with the username of the user you are adding.
sudo adduser $myuser $mygroup
# switch to normal user (fcqb2023 user) 
exit
```

6. Create a new conda environment

```bash
conda create --name bioinformatica
```

7.  install SPADES in the new environment

```bash
conda activate bioinformatica
conda install -c bioconda spades
```

8. Execute test

```bash
spades.py --test
```

9. If you got this error:  `AttributeError: module 'collections' has no attribute 'Hashable'`, then execute:

```bash
sed -i  '126 s/isinstance(key, collections\.Hashable)/isinstance(key, collections\.abc\.Hashable)/' ~/miniconda3/envs/bioinformatica/share/spades-3.13.1-0/share/spades/pyyaml3/constructor.py
```

10. Execute test again

```bash
spades.py --test
```
you should get: 

```bash
========= TEST PASSED CORRECTLY.
```


THE END!



## References (links):

1. <https://docs.anaconda.com/free/anaconda/install/>\
1. <https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html>\
1. <https://github.com/ablab/spades/issues/873>

