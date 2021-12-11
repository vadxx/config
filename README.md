# Overview
My minimalistic configuration for Unix.
Contains settings for `Neovim`, `Tmux`, `Fish`, `SSH from Windows`.
If you working from Windows do [setup SSH](./docs/SSH.md)
Install these deps (`sudo dnf install -y`):
```bash
fish exa neovim util-linux-user ripgrep gitui
```
Then run the script:
```bash
curl https://raw.githubusercontent.com/vadxx/config/main/setup.sh | sh
Optional fonts
```bash 
curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh | sh
```

# Keybinds
Here is [detailed description](./docs/KEYS.md)

Installed plugins:
```bash
vimplug gruvbox fzf fugitive gitgutter oscyank
```

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

# Uninstall
Run the script to remove configs for Neovim, Tmux, Fish:
```bash
curl https://raw.githubusercontent.com/vadxx/config/main/uninstall.sh | sh
```

