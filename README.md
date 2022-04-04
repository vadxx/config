# Overview
My minimalistic configuration for Unix.  

**Configure [Neovim is here](https://github.com/vad56/my-nvim).**
**If you working from Windows do [setup of SSH](./SSH.md).**

![demo](./assets/demo.png) 


Dependencies:
```bash
curl tmux fish exa neovim ripgrep
```
Notes: 
* [Ubuntu 20.04: install `exa`](https://github.com/vad56/config/edit/main/README.md#ubuntu)
* [`Gith Auth: gh`](https://github.com/cli/cli#installation)
  ```bash
    gh auth login # configure it as HTTPS and paste your token
  ```
* Set `fish` as default shell:
  ```bash
  chsh -s /usr/bin/fish
  ```


# Keybinds

<table>
<tr> <th>Tmux</th> <th>Fish</th> </tr>
<tr><td>

Keys | Desc
---|---
` + k | kill panel
` + v | split vertical
` + h | split horizontal
  
</td><td>

Keys | Desc
---|---
g | git
ll | exa: list of nodes
la | exa: list of all nodes
lt | exa: tree of nodes
  
</td></tr>
</table>

# Vbox
```bash
# vbox - share drive G to vm
sudo usermod -aG vboxsf $USER
sudo ln -s /media/sf_G_DRIVE /vm
```
# Fedora
```bash
# dnf
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf
```

# Ubuntu
```bash
# install exa
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
sudo unzip -q exa.zip bin/exa -d /usr/local

```

