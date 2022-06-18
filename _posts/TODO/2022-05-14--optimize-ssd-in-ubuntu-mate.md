cat /proc/sys/vm/swappiness

I set new value in 10, read the manual here:


<https://espaciotecnologico.co/optimizar-acelerar-tu-maquina-linux/>


Steps:
sudo nano /etc/sysctl.conf

add this last line:
vm.swappiness = 10

another sources:\
<https://averagelinuxuser.com/after-installing-mate/#21-optimize-the-system-optional>
