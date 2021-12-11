# Overview
Here is a guide how to work with Linux VM from Windows host.
```bash
# enable SSH
systemctl start sshd.service
systemctl enable sshd.service
```

## SSH forward
Open the Settings for your VirtualBox VM and add configuration for forwarding ports as on the screen  
![Forward port](../assets/vbox-ssh.png)  
Open your Windows powershell and run script:
```powershell
iex (iwr -useb https://raw.githubusercontent.com/vadxx/config/main/ssh_vm.ps1)
```
Usage:
```powershell
ssh vm 
```

## Clipboard over SSH
If you need to copy/paste text from NVIM while SSH session from Windows
install the Windows Terminal then use `y` to copy selected text. 
Read more [details here](https://github.com/ojroques/vim-oscyank)

