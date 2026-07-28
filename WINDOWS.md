# Windows workstation
### Core
1. Install `winget` - https://learn.microsoft.com/en-us/windows/package-manager/winget/
2. Install latest `Git`:
	```powershell
	winget install --id Git.Git -e --source winget
	winget install psmux
	winget install python
	winget install Docker.DockerDesktop
	winget install -e --id 7zip.7zip
	```
3. Git Bash: Install [~/.bashrc](.bashrc) support. It needs in further to extend your `$PATH`:
	```bash
	# add this to ~/.profile (allows to auto-load ~/.bashrc)
	touch ~/.profile # copy the content from the repo
	touch ~/.bashrc # copy the content from the repo

	source ~/.bashrc # refresh your current bash session
	```

##### VSCodium
Check my base config: [VSCodium/settings.json](VSCodium/settings.json) -> 
Install it to the `%APPDATA%/Roaming/VSCodium/$USERNAME/settings.json`.
> Hint: Install the Cascadia Code font: https://github.com/microsoft/cascadia-code