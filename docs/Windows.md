# Cleanup Windows 10 after fresh install
```bash
Soon
```

# Fix volume control for BT audio
1. Press `Win` and search `Registry Editor`;
2. Go to :
```
    HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Bluetooth\Audio\AVRCP\CT
```
3. Set `DisableAbsoluteVolume` to `1` for disable;
4. Reboot your PC;

More info on this [website](https://www.tenforums.com/tutorials/151957-how-enable-disable-bluetooth-absolute-volume-windows-10-a.html).