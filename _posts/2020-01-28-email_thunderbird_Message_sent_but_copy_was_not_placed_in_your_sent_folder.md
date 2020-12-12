# Thunderbird sent email problem: "Your message was sent but a copy was not placed in your sent folder (Sent Mail)"


## Problem: 

I'm constantly getting the message _"Your message was sent but a copy was not placed in your sent folder (Sent Mail) due to network or file access errors. You can retry or save the message locally to Pastas Locais/Sent Mail-xxxxx@xxxxxxxxxxx.com._

-  elemento1
-  elemento 2
- elemento 3. El software utilizado fue ```CRIPSscan```.
(diagrama de alineamiento)[http://url]


## Solution:

Two things to consider: in the ```Copies & Folders``` section for a gmail account in ```Tools/Account Settings```, uncheck ```Place a copy in``` since gmail automatically copies sent messages to the ```Sent folder```. Second, disable antivirus scanning of outgoing email, if it's in place.

### Step by step:
In thunderbird, choose your ```email account->Settings...->Copies & Folders```. Uncheck (disable) ```place a copy in:```

## Source:

 <https://support.mozilla.org/en-US/questions/1254264>


