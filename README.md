My configuration for Fedora vm.
```bash
curl https://raw.githubusercontent.com/vadxx/config/main/setup.sh | bash
```

# Tmux
Keybinds todo...

# NeoVim
```bash
sudo dnf install -y neovim
```
Keybinds todo...

# Core

```bash
# dnf
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf
echo "fastestmirror=True" | sudo tee -a /etc/dnf/dnf.conf

# vbox
sudo usermod -aG vboxsf $USER
sudo ln -s /media/sf_G_DRIVE /vm

# terminal
sudo dnf install -y fish util-linux-user
chsh -s /usr/bin/fish
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

```
Do reboot `systemctl reboot` after Core Setup.
