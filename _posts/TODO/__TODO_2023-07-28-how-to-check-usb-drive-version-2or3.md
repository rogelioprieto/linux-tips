Steps:
1. List usb devices
```bash
lsusb
```
2. Identify your device and get bus and device number, then execute:
`lsusb -v -s [bus]:[device]`
example:
```
lsusb -v -s 003:008
```
In the field/parameter list, locate  the `bcdUSB` parameter.



Source:\
<https://devicetests.com/identify-usb-3-thumb-drives-ubuntu>
