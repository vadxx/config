# Windows workstation
### Core
1. Install `winget` - https://learn.microsoft.com/en-us/windows/package-manager/winget/
2. Install latest `Git`:
	```powershell
	winget install --id Git.Git -e --source winget
	winget install psmux
	winget install python
	winget install Docker.DockerDesktop
	winget install Microsoft.WindowsTerminal
	winget install -e --id 7zip.7zip
	winget install -e --id VideoLAN.VLC
	```
3. `Git Bash`: Install [~/.bashrc](.bashrc) support. It needs in further to extend your `$PATH`:
	```bash
	touch ~/.profile # copy the content from the repo
	touch ~/.bashrc # copy the content from the repo

	source ~/.bashrc # refresh your current bash session
	```
4. `Windows Terminal`: Add `Git Bash` profile.
	`%APP_DATA%\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`:
	```json
	
	{
		"defaultProfile": "{2ece5bfe-50ed-5f3a-ab87-5cd4baafed2b}",
		"profiles": 
		{
			"defaults": {},
			"list": 
			[
				{
					"closeOnExit": "always",
					"commandline": "C:\\Program Files\\Git\\bin\\bash.exe --login -i",
					"guid": "{2ece5bfe-50ed-5f3a-ab87-5cd4baafed2b}",
					"icon": "C:\\Program Files\\Git\\mingw64\\share\\git\\git-for-windows.ico",
					"name": "Git Bash",
					"hidden": false,
					"startingDirectory": "%USERPROFILE%"
				},
			...
			],
	...
		}
	}
	```

##### VSCodium
Check my base config: [VSCodium/settings.json](VSCodium/settings.json) -> 
Install it to the `%APPDATA%/Roaming/VSCodium/$USERNAME/settings.json`.
> Hint: Install the Cascadia Code font: https://github.com/microsoft/cascadia-code