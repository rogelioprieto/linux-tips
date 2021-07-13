#Rogelio Prieto Alvarado
#March 29, 2021

#1.Edit repository sources file.
#sudo gedit /etc/apt/sources.list
echo "################" | sudo tee -a /etc/apt/sources.list
echo  "#March 29,2021. Ubuntu 18.04 repository added." | sudo tee -a /etc/apt/sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu bionic main universe" | sudo tee -a /etc/apt/sources.list
#2.Update repository. Download package information from all configured sources
sudo apt update
#3. Install gmt version 5.4.3 and its requirements
sudo apt-get install gmt-common=5.4.3+dfsg-1
sudo apt-get install gmt-gshhg-low
sudo apt-get install gmt-dcw
sudo apt-get install gmt-doc
sudo apt-get install gdal-data=2.2.3+dfsg-2
sudo apt-get install libgdal20
sudo apt-get install libgmt5
sudo apt-get install gmt=5.4.3+dfsg-1
gmt --version

#4.Remove the Ubuntu 18.04 repository in sources file.
#sudo sed -i '$d' /etc/apt/sources.list && sudo  sed -i '$d' /etc/apt/sources.list
sed -i -e :a -e '$d;N;2,3ba' -e 'P;D' /etc/apt/sources.list
#5. Update repository. Download package information from all configured sources
sudo apt update
