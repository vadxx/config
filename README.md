My configuration for fedora vm.

# Tmux


# NeoVim


# Core

```bash
# dnf
sudo nano /etc/dnf/dnf.conf:
max_parallel_downloads=10
fastestmirror=True

# vbox
sudo usermod -aG vboxsf $USER
sudo ln -s /media/sf_G_DRIVE /vm

# terminal
sudo dnf install -y fish util-linux-user
chsh -s /usr/bin/fish
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

```
