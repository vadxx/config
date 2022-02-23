# Overview
My minimalistic configuration for Unix.  

**Configure [Neovim is here](https://github.com/vad56/my-nvim).**
**If you working from Windows do [setup of SSH](./SSH.md).**

![demo](./assets/demo.png) 


Dependencies:
```bash
tmux fish exa neovim ripgrep
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

# Fedora
Configure Fedora and VBox:
```bash
# dnf
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf
# vbox - share drive G to vm
sudo usermod -aG vboxsf $USER
sudo ln -s /media/sf_G_DRIVE /vm
```
