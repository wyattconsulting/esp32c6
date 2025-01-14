Program your board using the esptool.py program, found
[here](https://github.com/espressif/esptool).

To put the TinyC6 into 'download mode', hold the _BOOT_ button while connecting
the USB cable. It can be released after the connection is made.

If you are putting MicroPython on your board for the first time then you should
first erase the entire flash using:

```bash
esptool.py --chip esp32c6 --port /dev/ttyUSB0 erase_flash
```

From then on program the firmware starting at address 0x0:

```bash
esptool.py --chip esp32c6 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x0 esp32c6-20220117-v1.18.bin
```
