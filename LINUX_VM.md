# Command line Linux VM
1. Get VirtualBox - https://www.virtualbox.org/wiki/Downloads
2. Debian (net installer) - https://www.debian.org/
	Survey: No -> Software selection (`only`): **SSH server, standard system** utilities -> `Grub: Yes` -> `/dev/sda`

## Configure password less SSH access
On the Host:
1. VirtualBox: Properties of `Debian` -> Network -> **Port Forwarding** -> **+** -> `Host port: 22, Guest Port: 22` -> Ok -> Ok -> Allow
2. (Windows example) In PowerShell generate SSH key, forward to Linux server and check auth:
```powershell
ssh-keygen -t ed25519
# Enter -> Enter -> Enter

# Print the pub content file and copy
$pubKey = Get-Content "$env:USERPROFILE\.ssh\id_ed25519.pub"

ssh user@localhost "mkdir -p ~/.ssh && echo '$pubKey' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

# Check: should be connected without password
ssh user@localhost
```
3. Useful SSH config for Windows host (Open PowerShell):
```powershell
$configEntry = @"
Host vm
    HostName localhost
    User user
    IdentityFile ~/.ssh/id_ed25519
"@
$configPath = "$env:USERPROFILE\.ssh\config"
Add-Content -Path $configPath -Value $configEntry

# Now use:
ssh vm
```


