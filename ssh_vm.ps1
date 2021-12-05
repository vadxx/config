New-Item -ItemType Directory -Force -Path $HOME\.ssh
ssh-keygen -t rsa -b 4096 -f "$HOME\.ssh\id_rsa-remote-ssh"
echo "press Enter multiple times"

New-Item -ItemType File -Force -Path $HOME\.ssh\config 
$conf = @"
Host vm
 User user
 HostName localhost
 Port 3022
 IdentityFile ~/.ssh/id_rsa-remote-ssh
"@

Set-Content -Force -Path "$HOME\.ssh\config" -Value $conf

$USER_AT_HOST="user@localhost"
$PUBKEYPATH="$HOME\.ssh\id_rsa-remote-ssh.pub"
$pubKey=(Get-Content "$PUBKEYPATH" | Out-String); ssh -p 3022 "$USER_AT_HOST" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo '${pubKey}' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

