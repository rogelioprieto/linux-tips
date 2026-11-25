
## Problem:

redshift error "Failed to run Redshift Trying location provider geoclue 2"
at startup

## Solution:

1. Set your location. Add to `/etc/geoclue/geoclue.conf`:

```
[redshift]
allowed=true
system=false
users=
```

I solved it by making a conf file.
`~/.config/redshift.conf`

Add thes lines:
```
[manual]
lat=24.8455007
lon=-107.3586803
```

You can get the latitude and longitud values from Google Maps:  
<https://support.google.com/maps/answer/18539?hl=en&co=GENIE.Platform%3DDesktop>

2. Config Redshift app.

```bash
nano ~/.config/redshift.conf
```

```bash
[redshift]
temp-day=4800
temp-night=4500
transition=1
adjustment-method=randr
location-provider=manual

[manual]
lat=24.8
lon=-107.4
```



## Source:
Steps taken from this discussion:
<https://github.com/jonls/redshift/issues/445>  
This describe the redshift funcionality:  
<https://itsfoss.com/install-redshift-linux-mint/>
Discussion: Redshift not working!
<https://forums.linuxmint.com/viewtopic.php?t=422300>