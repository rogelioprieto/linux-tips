# Setup BUSCO using a Docker Image in Ubuntu 16.04

## Install Docker

1. Update repositories and add the docker repository to APT sources
```bash
sudo apt-get update
sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get update
```

2. Be sure to install from  Ubuntu 16.04 default repository.
```bash
apt-cache policy docker-engine
```
It should appears this output:

```
#Output of apt-cache policy docker-engine
docker-engine:
  Installed: (none)
  Candidate: 1.11.1-0~xenial
  Version table:
     1.11.1-0~xenial 500
        500 https://apt.dockerproject.org/repo ubuntu-xenial/main amd64 Packages
     1.11.0-0~xenial 500
        500 https://apt.dockerproject.org/repo ubuntu-xenial/main amd64 Packages

```

3. Install Docker and verify that daemon has started and process enabled

```bash

sudo apt-get install -y docker-engine
sudo systemctl status docker
```
The output should be:

```
Output
● docker.service - Docker Application Container Engine
   Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
   Active: active (running) since Sun 2016-05-01 06:53:52 CDT; 1 weeks 3 days ago
     Docs: https://docs.docker.com
 Main PID: 749 (docker)
```


4. Execute Docker.

a) With root privilegies
You need root privilegies to execute ```docker```; you need to use sudo command to execute:
```bash
sudo docker
```

 
 b) If your user is in the docker group.

To add my user to docker group:

```bash
sudo usermod -aG docker $(whoami)
``` 


To add an specific user to docker group:

```bash
sudo usermod -aG docker username
```

Example:
```bash
sudo usermod -aG docker  ricardoparra 
```
Note: It's necessary logout and login again.


5. Using the ```docker``` command

```bash
docker
docker info
```

6. Try docker images
```bash
docker run hello-world
docker images
```

## Download and execute BUSCO
7. Download (pull) the BUSCO docker image.
```bash
docker pull ezlabgva/busco:v4.0.4_cv1
```


8. Execute BUSCO with an specific user
Before execute, the user should make the working directory (WD). In this example the WD is: /home/ricardoparra/busco_host_mount.

Login as ```ricardoparra``` user.
```bash
mkdir /home/ricardoparra/busco_host_mount
```

Execute ```docker``` specifying working directory and with ```genome.fna``` input file.
```bash
docker run -u $(id -u) -v /home/ricardoparra:/home/ricardoparra/busco_host_mount -w /home/ricardoparra/busco_host_mount ezlabgva/busco:v4.0.5_cv1 busco -i genome.fna
```

Source: <https://www.digitalocean.com/community/tutorials/como-instalar-y-usar-docker-en-ubuntu-16-04-es>



###TRASH --- TO DO: DELETE THEM!
# Real BUSCO input will be /home/name/genome.fna
docker run -u $(id -u) -v /home/ricardoparra:/home/ricardoparra/host_mount -w /home/ricardoparra/host_mount ezlabgva/busco:v4.0.4_cv1 busco -i genome.fna
docker run -u $(id -u) -v /home/name/:/busco_wd ezlabgva/busco:v4.0.5_cv1 busco -i genome.fna



docker run -u $(id -u) -v /home/ricardoparra/busco-test:/busco_wd -w /busco_wd ezlabgva/busco:v4.0.4_cv1 busco -i genome.fna

	
docker run -u $(id -u) -v /home/name/:/busco_wd ezlabgva/busco:v4.0.5_cv1 busco -i genome.fna
docker run -u $(id -u) -v /home/name:/host_mount -w /host_mount ezlabgva/busco:v4.0.5_cv1 busco -i genome.fna
