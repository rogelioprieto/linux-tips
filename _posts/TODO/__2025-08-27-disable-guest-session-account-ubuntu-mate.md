# Disable the default guest session to assure security

**Here is how to disable guest login:**

\[LightDM\]

# [](https://ubuntu-mate.community/t/guest-session-on-by-default/26471/10#p-119566-override-default-guest-account-script-by-arctica-greeters-guest-1)Override default guest-account script by Arctica Greeters guest

# [](https://ubuntu-mate.community/t/guest-session-on-by-default/26471/10#p-119566-account-script-2)account script.

guest-account-script=arctica-greeter-guest-account-script

**Open a terminal and copy and paste:**  
sudo pluma /etc/lightdm/lightdm.conf.d/91-arctica-greeter-guest-session.conf

allow-guest=true  
changing to:  
**allow-guest=false**

**Reboot the machine** and it's done!

I don't allow anyone else to ever use my laptop, so I always disable guest login.


Source:
<https://ubuntu-mate.community/t/guest-session-on-by-default/26471>
