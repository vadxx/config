New-Item -ItemType Directory -Force -Path $HOME\.ssh
ssh-keygen -t rsa -b 4096 -f "$HOME\.ssh\id_rsa-remote-ssh"
echo "press Enter multiple times"

$serverName=$args[0]
$userName=$args[1]
$hostAddr=$args[2]
$hostPort=$args[3]

New-Item -ItemType File -Force -Path $HOME\.ssh\config 
$conf = @"
Host $serverName
 User $userName
 HostName $hostAddr
 Port $hostPort
 IdentityFile ~/.ssh/id_rsa-remote-ssh
"@

Set-Content -Force -Path "$HOME\.ssh\config" -Value $conf

$USER_AT_HOST="$serverName@$hostAddr"
$PUBKEYPATH="$HOME\.ssh\id_rsa-remote-ssh.pub"
$pubKey=(Get-Content "$PUBKEYPATH" | Out-String); ssh -p $hostPort "$USER_AT_HOST" "mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo '${pubKey}' >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

