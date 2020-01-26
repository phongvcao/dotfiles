# dotfiles

My personal configurations for Mac & Ubuntu workstations

## Install

### Locally

First, clone this repository to `~/.dotfiles` folder on your computer, then

```bash
cd ~/.dotfiles
bash ./setup && bash ./install
```

### Remotely

First, issue the following command on the remote machine:

```bash
su -
passwd
passwd ${USER}
chmod 0440 /etc/sudoers
adduser phongvcao sudo
adduser phongvcao admin
```

Then, enable ssh by password to the remote machine by changing `PasswordAuthentication`
in `/etc/ssh/sshd_config` to `yes`

```bash
vi /etc/ssh/sshd_config         # Change PasswordAuthentication to yes
exit
```

Finally, download and run the `remote_install` script

```bash
cd ~
wget https://raw.githubusercontent.com/phongvcao/dotfiles/master/remote_install
bash ./remote_install
rm -rf ./remote_install
```

## Uninstall

```bash
cd ~/.dotfiles
./uninstall
```

## License

Copyright (c) 2019 Phong V. Cao. Released under MIT License. See [LICENSE.md][license] for details.

[license]: LICENSE.md
