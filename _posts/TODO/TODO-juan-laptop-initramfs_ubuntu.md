I keep getting same problem and finally I got the solution which works every time for me:

1) boot your system with LIVE CD or Pendrive
2) open terminal and execute sudo fsck /dev/sda1 (sda1 is generally used, if you have a different drive on 
   which ubuntu is installed then give that)
3) It may prompt you several times asking "y or n", in that case keep pressing Y.
4) After process is over , reboot the system and remove the pendrive