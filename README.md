# Overview
My minimalistic configuration for Unix.  

**Configure [Neovim here](https://github.com/vad56/my-nvim).**
**If you working from Windows do [setup SSH](./SSH.md).**

Dependencies:
```bash
tmux fish exa neovim ripgrep
```

# Keybinds

# Tmux
The ` is prefix. Added keybinds:
Keys | Desc
---|---
prefix + k | kill panel
prefix + v | split vertical
prefix + h | split horizontal

# Fish
Added keybinds:
Keys | Desc
---|---
g | git
ll | exa: list of nodes
la | exa: list of all nodes
lt | exa: tree of nodes


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
