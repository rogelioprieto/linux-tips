
## Problem:

redshift error "Failed to run Redshift Trying location provider geoclue 2"
at startup

## Solution:

Add to `/etc/geoclue/geoclue.conf`:

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


## Source:
Steps taken from this discussion:
<https://github.com/jonls/redshift/issues/445>  
This describe the redshift funcionality:  
<https://itsfoss.com/install-redshift-linux-mint/>