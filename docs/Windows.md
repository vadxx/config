# Cleanup Windows 10 after fresh install
```bash
Soon
```

# Install only Word, Excel, Powerpoint, Teams, Visio from Office365
1. Download Office [Deployment Tool](https://www.microsoft.com/en-us/download/details.aspx?id=49117);
2. Create `conf-o365.xml` file with this content:
```bash
    <Configuration>
      <Add OfficeClientEdition="64" Channel="Monthly">
        <Product ID="O365ProPlusRetail">
          <Language ID="en-us" />
          <ExcludeApp ID="Access" />
          <ExcludeApp ID="Groove" />
          <ExcludeApp ID="OneDrive" />
          <ExcludeApp ID="OneNote" />
          <ExcludeApp ID="Outlook" />
          <ExcludeApp ID="Publisher" />
          <ExcludeApp ID="Lync" />
          <ExcludeApp ID="Bing" />
        </Product>
        <Product ID="VisioProRetail">
          <Language ID="en-us" />
        </Product>
      </Add>
    </Configuration>
```
3. Run setup with configuration:
```bash
    ./setup.exe /configure ./conf-o365.xml
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
