# Pop OS
Cleanup software after fresh install
```bash
sudo apt remove -y geary libreoffice* gnome-contacts gnome-weather
sudo apt -y autoremove
```
Set Python 3 as Python and Pip by default
```bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
```

# Debian
Soon...

# Virtual Box
Fix access to shared folders
```bash
sudo usermod -aG vboxsf $USER
```
Expand disk-size on Ubuntu
```bash
sudo apt install -y cloud-guest-utils
sudo growpart /dev/sda 1
sudo resize2fs /dev/sda1
```

Setup Git usage
```bash
git config --global user.email "<email>"
git config --global user.name "<name>"
# store creds
git config credential.helper store
# make a pull req for example
git pull
# fill login and password
```
Enable connection to Xbox One Controller via Bluetooth
```bash
sudo echo 1 > /sys/module/bluetooth/parameters/disable_ertm
```
