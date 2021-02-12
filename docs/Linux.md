# Pop OS
Cleanup software after fresh install
```bash
sudo apt remove -y geary libreoffice* gnome-contacts gnome-weather
sudo apt -y autoremove
```

# Debian
Soon...

# Virtual Box
Fix access to shared folders
```bash
sudo usermod -aG vboxsf $USER
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